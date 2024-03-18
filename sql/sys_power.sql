DROP TABLE IF EXISTS "sys_power";

CREATE TABLE "sys_power" (
  "power_id" char(19) NOT NULL,
  "power_name" varchar(255),
  "power_type" char(1),
  "power_code" char(30),
  "power_url" varchar(255),
  "open_type" char(10),
  "parent_id" char(19),
  "icon" varchar(128),
  "sort" int4,
  "create_by" char(19),
  "create_time" timestamp,
  "update_by" char(19),
  "update_time" timestamp,
  "remark" varchar(255),
  "enable" char(1),
  PRIMARY KEY ("power_id")
);
COMMENT ON COLUMN "sys_power"."power_id" IS '权限编号';
COMMENT ON COLUMN "sys_power"."power_name" IS '权限名称';
COMMENT ON COLUMN "sys_power"."power_type" IS '权限类型';
COMMENT ON COLUMN "sys_power"."power_code" IS '权限标识';
COMMENT ON COLUMN "sys_power"."power_url" IS '权限路径';
COMMENT ON COLUMN "sys_power"."open_type" IS '打开方式';
COMMENT ON COLUMN "sys_power"."parent_id" IS '父类编号';
COMMENT ON COLUMN "sys_power"."icon" IS '图标';
COMMENT ON COLUMN "sys_power"."sort" IS '排序';
COMMENT ON COLUMN "sys_power"."create_by" IS '创建人';
COMMENT ON COLUMN "sys_power"."create_time" IS '创建时间';
COMMENT ON COLUMN "sys_power"."update_by" IS '修改人';
COMMENT ON COLUMN "sys_power"."update_time" IS '修改时间';
COMMENT ON COLUMN "sys_power"."remark" IS '备注';
COMMENT ON COLUMN "sys_power"."enable" IS '是否开启';

