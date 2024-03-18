DROP TABLE IF EXISTS "sys_config";

CREATE TABLE "sys_config" (
  "config_id" varchar(19) NOT NULL,
  "config_name" char(20),
  "config_code" char(20),
  "config_value" varchar(255),
  "create_time" timestamp,
  "create_by" char(19),
  "update_by" char(19),
  "update_time" timestamp,
  "remark" varchar(255),
  "config_type" char(10),
  PRIMARY KEY ("config_id")
);
COMMENT ON COLUMN "sys_config"."config_id" IS '配置标识';
COMMENT ON COLUMN "sys_config"."config_name" IS '配置名称';
COMMENT ON COLUMN "sys_config"."config_code" IS '配置标识';
COMMENT ON COLUMN "sys_config"."config_value" IS '配置值';
COMMENT ON COLUMN "sys_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "sys_config"."create_by" IS '创建人';
COMMENT ON COLUMN "sys_config"."update_by" IS '修改人';
COMMENT ON COLUMN "sys_config"."update_time" IS '修改时间';
COMMENT ON COLUMN "sys_config"."remark" IS '备注';
COMMENT ON COLUMN "sys_config"."config_type" IS '配置类型';

