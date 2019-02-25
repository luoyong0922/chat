package com.roy.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.roy.model.RespBean;
import com.roy.service.LRService;
import com.roy.util.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.*;
import org.springframework.security.config.annotation.ObjectPostProcessor;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by sang on 2017/12/28.
 */
@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    LRService lrService;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(lrService)
                .passwordEncoder(new BCryptPasswordEncoder());
    }
    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/index.html", "/static/**", "/login_p");
    }
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
        .withObjectPostProcessor(new ObjectPostProcessor<FilterSecurityInterceptor>() {
            @Override
            public <O extends FilterSecurityInterceptor> O postProcess(O o) {

                return o;
            }
        })
        .and()
        .formLogin().loginPage("/user/login_p").loginProcessingUrl("/user/doLogin")
        .usernameParameter("qno").passwordParameter("password")
        .failureHandler(new AuthenticationFailureHandler() {
            @Override
            public void onAuthenticationFailure(HttpServletRequest req,
                                HttpServletResponse resp,
                                AuthenticationException e) throws IOException {
                resp.setContentType("application/json;charset=utf-8");
                RespBean respBean = null;
                if (e instanceof BadCredentialsException ||
                        e instanceof UsernameNotFoundException) {
                    respBean = RespBean.error("账户名或者密码输入错误!");
                } else if (e instanceof LockedException) {
                    respBean = RespBean.error("账户被锁定，请联系管理员!");
                } else if (e instanceof CredentialsExpiredException) {
                    respBean = RespBean.error("密码过期，请联系管理员!");
                } else if (e instanceof AccountExpiredException) {
                    respBean = RespBean.error("账户过期，请联系管理员!");
                } else if (e instanceof DisabledException) {
                    respBean = RespBean.error("账户被禁用，请联系管理员!");
                } else {
                    respBean = RespBean.error("登录失败!");
                }
                System.out.println(respBean);
                resp.setStatus(401);
                ObjectMapper om = new ObjectMapper();
                PrintWriter out = resp.getWriter();
                out.write(om.writeValueAsString(respBean));
                out.flush();
                out.close();
            }
        })
        .successHandler(new AuthenticationSuccessHandler() {
            @Override
            public void onAuthenticationSuccess(HttpServletRequest req,
                                    HttpServletResponse resp,
                                    Authentication auth) throws IOException {
            resp.setContentType("application/json;charset=utf-8");
            RespBean respBean = RespBean.ok("登录成功!", UserUtils.getCurrentUser());
            ObjectMapper om = new ObjectMapper();
            PrintWriter out = resp.getWriter();
            out.write(om.writeValueAsString(respBean));
            out.flush();
            out.close();
            }
        })
        .permitAll()
        .and()
        .logout().permitAll()
        .and().csrf().disable()
        .exceptionHandling()
                .and()
                .rememberMe()
                    .tokenValiditySeconds(604800) //记住我功能，cookies有限期是一周
                    .rememberMeParameter("remember-me") //登陆时是否激活记住我功能的参数名字，在登陆页面有展示
                    .rememberMeCookieName("workspace"); //cookies的名字，登陆后可以通过浏览器查看cookies名字
    }
}