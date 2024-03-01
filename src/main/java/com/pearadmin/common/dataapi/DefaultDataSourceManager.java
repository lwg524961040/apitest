package com.pearadmin.common.dataapi;


import com.github.alenfive.rocketapi.datasource.DataSourceDialect;
import com.github.alenfive.rocketapi.datasource.DataSourceManager;
import com.github.alenfive.rocketapi.datasource.MySQLDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.PlatformTransactionManager;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

@Component
public class DefaultDataSourceManager extends DataSourceManager {

    @Autowired
    private DataSource dataSource;



    @PostConstruct
    public void init() {

        Map<String, DataSourceDialect> dialects = new HashMap();
        //通过MysqlDataSource的第二个参数为`true`来表示生成的API信息所存储的库，有且仅有一个为true
        dialects.put("mysql",new MySQLDataSource(dataSource,true));
        super.setDialectMap(dialects);
    }

}
