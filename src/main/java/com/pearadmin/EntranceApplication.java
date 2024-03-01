package com.pearadmin;

import com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceAutoConfigure;

import org.activiti.spring.boot.SecurityAutoConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * Pear Admin Boot 入口
 * */
@EnableTransactionManagement
@SpringBootApplication(exclude = {SecurityAutoConfiguration.class, DataSourceAutoConfiguration.class, DruidDataSourceAutoConfigure.class, org.activiti.spring.boot.SecurityAutoConfiguration.class})
public class EntranceApplication {

    public static void main(String[] args) {
        SpringApplication.run(EntranceApplication.class, args);
    }
}
