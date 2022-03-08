package com.pearadmin;

import lombok.extern.slf4j.Slf4j;
import org.activiti.spring.boot.SecurityAutoConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.Environment;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * Spring Boot Application 启 动 类
 */
@Slf4j
@ServletComponentScan
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class, org.activiti.spring.boot.SecurityAutoConfiguration.class, SecurityAutoConfiguration.class})
public class PearEntranceApplication {

    public static void main(String[] args) throws IOException {

        ConfigurableApplicationContext app = SpringApplication.run(PearEntranceApplication.class, args);
        Environment env = app.getEnvironment();
        String ip = InetAddress.getLocalHost().getHostAddress();
        String port = env.getProperty("server.port");
        String dataBseUrl = env.getProperty("spring.datasource.dynamic.datasource.master.url");
        String envSign = env.getProperty("spring.profiles.active");

        log.info("\n-------------------------------\n" +
                "当前启动环境:\t" + envSign + "\n" +
                "项目启动地址:\t" + ip + ":" + port + "\n" +
                "后端请求地址:\t" + ip + ":" + port + "\n" +
                "数据库访问地址:\t" + dataBseUrl + "\n" +
                "-------------------------------"
        );

        if ("dev".equals(envSign))
            Runtime.getRuntime().exec("cmd /c start http://" + ip + ":" + port);

    }
}
