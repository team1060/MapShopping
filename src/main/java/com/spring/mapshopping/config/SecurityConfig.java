package com.spring.mapshopping.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration // 빈 등록 
@EnableWebSecurity // security 
public class SecurityConfig {
    
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http
			.csrf().disable(); //csrf 사용안함 
//		http
//				.authorizeRequests()
//				
//				.requestMatchers("/", "/signup").permitAll() // 주소허용 
//				.anyRequest().authenticated() // 다른 주소는 인증 필요 (테스트용도)
//			.and()
//				.formLogin() // 폼 로그인 
//				.loginPage("/")
//				.loginProcessingUrl("/")
//				.usernameParameter("id")
//				.defaultSuccessUrl("/")
//				.permitAll()
//			.and()
//				.logout()
//				.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
//				.logoutSuccessUrl("/")
//				.invalidateHttpSession(true);
		return http.build();
	}
    
    /*
     * 로그인 정보 저장 
     */
    
//    @Bean
//    public JdbcTokenRepositoryImpl jdbcTokenRepositoryImpl() {
//    	JdbcTokenRepositoryImpl impl = new JdbcTokenRepositoryImpl();
//    	impl.setDataSource(dataSource);
//    	return impl;
	
	 @Bean
	    public PasswordEncoder passwordEncoder() {
	        return new BCryptPasswordEncoder();
	    }
    }
    

