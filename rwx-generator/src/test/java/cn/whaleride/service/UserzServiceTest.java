package cn.whaleride.service;

import cn.whaleride.entity.UserzEntity;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"classpath:spring-mvc.xml","classpath:spring-jdbc.xml"})
public class UserzServiceTest {
    @Autowired
    UserzService userzService;

    @org.junit.Test
    public void selectUsers() {
        List<UserzEntity> list = userzService.selectUsers();
        for (UserzEntity user:
             list) {
            assertEquals("success", 0, user.getStatus().longValue());
        }
    }
}