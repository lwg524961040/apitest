package com.pearadmin.modules.sys.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.pearadmin.common.web.base.BaseDomain;

/**
 * Dynamic API实体
 *
 * @author wings
 * @date 2024-02-24
 */
@Data
@TableName("sys_dynamic_api")
public class SysDynamicApi extends BaseDomain{

    /** null */
    @TableId
    private String id;

    /** 数据源id */
    private String datasourceId;

    /** 表名 */
    private String tableName;

    /** 动态路由里大括号的部分 */
    private String apiRoute;

    /** 是否启用 */
    private String enable;


}
