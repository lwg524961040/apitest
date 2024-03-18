DROP TABLE IF EXISTS "sys_file";

CREATE TABLE "sys_file" (
  "id" varchar(255) NOT NULL,
  "file_name" varchar(255),
  "file_desc" varchar(255),
  "file_path" varchar(255),
  "file_type" varchar(255),
  "create_by" varchar(255),
  "create_time" timestamp,
  "update_by" varchar(255),
  "update_time" timestamp,
  "remark" varchar(255),
  "target_date" timestamp,
  "file_size" varchar(255),
  PRIMARY KEY ("id")
);
COMMENT ON COLUMN "sys_file"."id" IS '标识';
COMMENT ON COLUMN "sys_file"."file_name" IS '文件名称';
COMMENT ON COLUMN "sys_file"."file_desc" IS '文件描述';
COMMENT ON COLUMN "sys_file"."file_path" IS '文件路径';
COMMENT ON COLUMN "sys_file"."file_type" IS '文件类型';
COMMENT ON COLUMN "sys_file"."create_by" IS '创建人';
COMMENT ON COLUMN "sys_file"."create_time" IS '创建时间';
COMMENT ON COLUMN "sys_file"."update_by" IS '修改人';
COMMENT ON COLUMN "sys_file"."update_time" IS '修改时间';
COMMENT ON COLUMN "sys_file"."remark" IS '备注';
COMMENT ON COLUMN "sys_file"."target_date" IS '所属时间';
COMMENT ON COLUMN "sys_file"."file_size" IS '文件大小';

