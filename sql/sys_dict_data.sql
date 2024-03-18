DROP TABLE IF EXISTS "sys_dict_data";

CREATE TABLE "sys_dict_data" (
  "data_id" char(19) NOT NULL,
  "data_label" char(19),
  "data_value" char(20),
  "type_code" char(20),
  "is_default" char(1),
  "update_by" char(19),
  "update_time" timestamp,
  "create_by" char(19),
  "create_time" timestamp,
  "remark" varchar(255),
  "enable" char(1),
  PRIMARY KEY ("data_id")
);
COMMENT ON COLUMN "sys_dict_data"."data_id" IS '标识';
COMMENT ON COLUMN "sys_dict_data"."data_label" IS '字典标签';
COMMENT ON COLUMN "sys_dict_data"."data_value" IS '字典值';
COMMENT ON COLUMN "sys_dict_data"."type_code" IS '所属类型';
COMMENT ON COLUMN "sys_dict_data"."is_default" IS '是否默认';
COMMENT ON COLUMN "sys_dict_data"."update_by" IS '修改人';
COMMENT ON COLUMN "sys_dict_data"."update_time" IS '修改时间';
COMMENT ON COLUMN "sys_dict_data"."create_by" IS '创建人';
COMMENT ON COLUMN "sys_dict_data"."create_time" IS '创建时间';
COMMENT ON COLUMN "sys_dict_data"."remark" IS '备注';
COMMENT ON COLUMN "sys_dict_data"."enable" IS '是否启用';

