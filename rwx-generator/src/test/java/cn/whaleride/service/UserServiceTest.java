package cn.whaleride.service;

import cn.whaleride.entity.UserEntity;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"classpath:spring-mvc.xml","classpath:spring-jdbc.xml"})
public class UserServiceTest {
    @Autowired
    UserService userService;

    @Test
    public void selectById() {
        UserEntity user = userService.selectById(1L);
        assertEquals("success",0, user.getStatus().longValue());
    }
}