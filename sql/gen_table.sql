DROP TABLE IF EXISTS "gen_table";

CREATE TABLE "gen_table" (
  "table_id" varchar(20) NOT NULL,
  "table_name" varchar(200),
  "table_comment" varchar(500),
  "sub_table_name" varchar(64),
  "sub_table_fk_name" varchar(64),
  "class_name" varchar(100),
  "tpl_category" varchar(200),
  "package_name" varchar(100),
  "module_name" varchar(30),
  "business_name" varchar(30),
  "function_name" varchar(50),
  "function_author" varchar(50),
  "gen_type" char(1),
  "gen_path" varchar(200),
  "options" varchar(1000),
  "create_by" varchar(64),
  "create_time" timestamp,
  "update_by" varchar(64),
  "update_time" timestamp,
  "remark" varchar(500),
  "parent_menu_id" varchar(40),
  "parent_menu_name" varchar(255),
  "tree_code" varchar(255),
  "tree_parent_code" varchar(255),
  "tree_name" varchar(255),
  PRIMARY KEY ("table_id")
);
COMMENT ON COLUMN "gen_table"."table_id" IS '编号';
COMMENT ON COLUMN "gen_table"."table_name" IS '表名称';
COMMENT ON COLUMN "gen_table"."table_comment" IS '表描述';
COMMENT ON COLUMN "gen_table"."sub_table_name" IS '关联子表的表名';
COMMENT ON COLUMN "gen_table"."sub_table_fk_name" IS '子表关联的外键名';
COMMENT ON COLUMN "gen_table"."class_name" IS '实体类名称';
COMMENT ON COLUMN "gen_table"."tpl_category" IS '使用的模板（crud单表操作 tree树表操作 sub主子表操作）';
COMMENT ON COLUMN "gen_table"."package_name" IS '生成包路径';
COMMENT ON COLUMN "gen_table"."module_name" IS '生成模块名';
COMMENT ON COLUMN "gen_table"."business_name" IS '生成业务名';
COMMENT ON COLUMN "gen_table"."function_name" IS '生成功能名';
COMMENT ON COLUMN "gen_table"."function_author" IS '生成功能作者';
COMMENT ON COLUMN "gen_table"."gen_type" IS '生成代码方式（0zip压缩包 1自定义路径）';
COMMENT ON COLUMN "gen_table"."gen_path" IS '生成路径（不填默认项目路径）';
COMMENT ON COLUMN "gen_table"."options" IS '其它生成选项';
COMMENT ON COLUMN "gen_table"."create_by" IS '创建者';
COMMENT ON COLUMN "gen_table"."create_time" IS '创建时间';
COMMENT ON COLUMN "gen_table"."update_by" IS '更新者';
COMMENT ON COLUMN "gen_table"."update_time" IS '更新时间';
COMMENT ON COLUMN "gen_table"."remark" IS '备注';
COMMENT ON COLUMN "gen_table"."parent_menu_id" IS '父级菜单';
COMMENT ON COLUMN "gen_table"."parent_menu_name" IS '父级菜单名称';
COMMENT ON COLUMN "gen_table"."tree_code" IS '树表主键';
COMMENT ON COLUMN "gen_table"."tree_parent_code" IS '树表父级字段';
COMMENT ON COLUMN "gen_table"."tree_name" IS '树表父级名称';
COMMENT ON TABLE "gen_table" IS '代码生成业务表';

