DROP TABLE IF EXISTS "sys_dict";

CREATE TABLE "sys_dict" (
  "id" char(19) NOT NULL,
  "type_name" varchar(255),
  "type_code" varchar(255),
  "description" varchar(255),
  "enable" char(1),
  "create_by" char(19),
  "create_time" timestamp,
  "update_by" char(19),
  "update_time" timestamp,
  "remark" varchar(255),
  PRIMARY KEY ("id")
);
COMMENT ON COLUMN "sys_dict"."id" IS '标识';
COMMENT ON COLUMN "sys_dict"."type_name" IS '字典类型名称';
COMMENT ON COLUMN "sys_dict"."type_code" IS '字典类型标识';
COMMENT ON COLUMN "sys_dict"."description" IS '字典类型描述';
COMMENT ON COLUMN "sys_dict"."enable" IS '是否启用';
COMMENT ON COLUMN "sys_dict"."create_by" IS '创建人';
COMMENT ON COLUMN "sys_dict"."create_time" IS '创建时间';
COMMENT ON COLUMN "sys_dict"."update_by" IS '修改人';
COMMENT ON COLUMN "sys_dict"."update_time" IS '修改时间';
COMMENT ON COLUMN "sys_dict"."remark" IS '备注';

