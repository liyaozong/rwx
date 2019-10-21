package cn.whaleride.aspect;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Arrays;

/**
 * 日志切面
 *
 * @author Liyaozong
 * @email 125030963@qq.com
 * @date 2019-05-01 08:10
 */
@Slf4j
@Aspect
@Component
public class LogAspect {
    @Pointcut("execution( * cn.whaleride..controller.*.*(..))")//两个..代表所有子目录，最后括号里的两个..代表所有参数
    public void logPointCut() {
    }


    @Before("logPointCut()")
    public void doBefore(JoinPoint joinPoint) throws Throwable {
        //TODO
    }

    @AfterReturning(returning = "ret", pointcut = "logPointCut()")
    public void doAfterReturning(Object ret) throws Throwable {
        // 处理完请求，返回内容(返回值太复杂时，打印的是物理存储空间的地址)
        if (log.isDebugEnabled()) {
            log.debug("返回值 : " + ret);
        }
    }

    @Around("logPointCut()")
    public Object doAround(ProceedingJoinPoint pjp) throws Throwable {
        // 接收请求
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();

        // 记录请求内容
        log.info("请求地址 : " + request.getRequestURL().toString());
        log.info("HTTP_METHOD : " + request.getMethod());
        log.info("CLASS_METHOD : " + pjp.getSignature().getDeclaringTypeName() + "."
                + pjp.getSignature().getName());
        log.info("参数 : " + Arrays.toString(pjp.getArgs()));

        long startTime = System.currentTimeMillis();
        Object ob = pjp.proceed();

        log.info("计时结束：{}  耗时：{}  URI: {}  最大内存: {}m  已分配内存: {}m  已分配内存中的剩余空间: {}m  最大可用内存: {}m",
                new SimpleDateFormat("hh:mm:ss.SSS").format(System.currentTimeMillis()),
                (System.currentTimeMillis() - startTime), request.getRequestURI(),
                Runtime.getRuntime().maxMemory() / 1024 / 1024,
                Runtime.getRuntime().totalMemory() / 1024 / 1024,
                Runtime.getRuntime().freeMemory() / 1024 / 1024,
                (Runtime.getRuntime().maxMemory() - Runtime.getRuntime().totalMemory()
                        + Runtime.getRuntime().freeMemory()) / 1024 / 1024);

        return ob;
    }
}
