DROP TABLE IF EXISTS "sys_data_source";

CREATE TABLE "sys_data_source" (
  "id" char(19),
  "name" char(50),
  "enable" varchar(1),
  "username" char(30),
  "password" char(30),
  "url" varchar(255),
  "driver" char(50),
  "create_by" char(19),
  "create_time" timestamp,
  "update_by" char(19),
  "update_time" timestamp,
  "remark" varchar(255)
);
COMMENT ON COLUMN "sys_data_source"."id" IS '数据源编号';
COMMENT ON COLUMN "sys_data_source"."name" IS '数据源名称';
COMMENT ON COLUMN "sys_data_source"."enable" IS '是否启用';
COMMENT ON COLUMN "sys_data_source"."username" IS '用户名';
COMMENT ON COLUMN "sys_data_source"."password" IS '密码';
COMMENT ON COLUMN "sys_data_source"."driver" IS '驱动';

