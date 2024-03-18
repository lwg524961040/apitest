DROP TABLE IF EXISTS "gen_table_column";

CREATE TABLE "gen_table_column" (
  "column_id" varchar(20) NOT NULL,
  "table_id" varchar(64),
  "column_name" varchar(200),
  "column_comment" varchar(500),
  "column_type" varchar(100),
  "java_type" varchar(500),
  "java_field" varchar(200),
  "is_pk" char(1),
  "is_increment" char(1),
  "is_required" char(1),
  "is_insert" char(1),
  "is_edit" char(1),
  "is_list" char(1),
  "is_query" char(1),
  "query_type" varchar(200),
  "html_type" varchar(200),
  "dict_type" varchar(200),
  "sort" int4,
  "create_by" varchar(64),
  "create_time" timestamp,
  "update_by" varchar(64),
  "update_time" timestamp,
  PRIMARY KEY ("column_id")
);
COMMENT ON COLUMN "gen_table_column"."column_id" IS '编号';
COMMENT ON COLUMN "gen_table_column"."table_id" IS '归属表编号';
COMMENT ON COLUMN "gen_table_column"."column_name" IS '列名称';
COMMENT ON COLUMN "gen_table_column"."column_comment" IS '列描述';
COMMENT ON COLUMN "gen_table_column"."column_type" IS '列类型';
COMMENT ON COLUMN "gen_table_column"."java_type" IS 'JAVA类型';
COMMENT ON COLUMN "gen_table_column"."java_field" IS 'JAVA字段名';
COMMENT ON COLUMN "gen_table_column"."is_pk" IS '是否主键（1是）';
COMMENT ON COLUMN "gen_table_column"."is_increment" IS '是否自增（1是）';
COMMENT ON COLUMN "gen_table_column"."is_required" IS '是否必填（1是）';
COMMENT ON COLUMN "gen_table_column"."is_insert" IS '是否为插入字段（1是）';
COMMENT ON COLUMN "gen_table_column"."is_edit" IS '是否编辑字段（1是）';
COMMENT ON COLUMN "gen_table_column"."is_list" IS '是否列表字段（1是）';
COMMENT ON COLUMN "gen_table_column"."is_query" IS '是否查询字段（1是）';
COMMENT ON COLUMN "gen_table_column"."query_type" IS '查询方式（等于、不等于、大于、小于、范围）';
COMMENT ON COLUMN "gen_table_column"."html_type" IS '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）';
COMMENT ON COLUMN "gen_table_column"."dict_type" IS '字典类型';
COMMENT ON COLUMN "gen_table_column"."sort" IS '排序';
COMMENT ON COLUMN "gen_table_column"."create_by" IS '创建者';
COMMENT ON COLUMN "gen_table_column"."create_time" IS '创建时间';
COMMENT ON COLUMN "gen_table_column"."update_by" IS '更新者';
COMMENT ON COLUMN "gen_table_column"."update_time" IS '更新时间';
COMMENT ON TABLE "gen_table_column" IS '代码生成业务表字段';

