DROP TABLE IF EXISTS "sys_role";

CREATE TABLE "sys_role" (
  "role_id" char(19) NOT NULL,
  "role_name" varchar(255),
  "role_code" varchar(255),
  "enable" char(1),
  "create_time" timestamp,
  "create_by" char(19),
  "update_time" timestamp,
  "update_by" char(19),
  "remark" varchar(255),
  "details" varchar(255),
  "sort" int4,
  "data_scope" char(20),
  PRIMARY KEY ("role_id")
);
COMMENT ON COLUMN "sys_role"."role_id" IS '角色编号';
COMMENT ON COLUMN "sys_role"."role_name" IS '角色名称';
COMMENT ON COLUMN "sys_role"."role_code" IS '角色标识';
COMMENT ON COLUMN "sys_role"."enable" IS '是否启用';
COMMENT ON COLUMN "sys_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "sys_role"."create_by" IS '创建人';
COMMENT ON COLUMN "sys_role"."update_time" IS '修改时间';
COMMENT ON COLUMN "sys_role"."update_by" IS '修改人';
COMMENT ON COLUMN "sys_role"."remark" IS '备注';
COMMENT ON COLUMN "sys_role"."details" IS '详情';
COMMENT ON COLUMN "sys_role"."sort" IS '排序';
COMMENT ON COLUMN "sys_role"."data_scope" IS '数据权限';

