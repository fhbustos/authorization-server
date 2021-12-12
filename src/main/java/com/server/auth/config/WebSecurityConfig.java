package com.server.auth.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;

/**
 * TODO agregar comentarios
 * @author fbustos
 *
 */
@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
//	@Bean
//    public UserDetailsService uds() {
//        var uds = new InMemoryUserDetailsManager();
//
//        var u = User.withUsername("john")
//                .password("12345")
//                .authorities("read")
//                .build();
//
//        uds.createUser(u);
//
//        return uds;
//    }

	@Bean
	public UserDetailsService userDetailsService(DataSource dataSource) {
		return new JdbcUserDetailsManager(dataSource);
	}

    @Bean
    public PasswordEncoder passwordEncoder() {
        return NoOpPasswordEncoder.getInstance();
    }

    @Override
    @Bean
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }
}
