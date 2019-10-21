package cn.whaleride.controller;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"classpath:spring-mvc.xml","classpath:spring-jdbc.xml"})
public class LoginControllerTest {
    @Autowired
    LoginController loginController;

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void login() {
    }

    @Test
    public void ajaxLogin() {
    }

    @Test
    public void main() {
    }

    @Test
    public void logout() {
    }

    @Test
    public void captcha() {
    }
}