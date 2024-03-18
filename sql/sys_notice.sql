DROP TABLE IF EXISTS "sys_notice";

CREATE TABLE "sys_notice" (
  "id" char(20) NOT NULL,
  "title" varchar(255),
  "content" text,
  "sender" char(20),
  "accept" char(20),
  "type" char(10),
  "create_by" char(20),
  "create_time" timestamp,
  "update_by" char(20),
  "update_time" timestamp,
  "remark" varchar(255),
  PRIMARY KEY ("id")
);
COMMENT ON COLUMN "sys_notice"."id" IS '编号';
COMMENT ON COLUMN "sys_notice"."title" IS '标题';
COMMENT ON COLUMN "sys_notice"."content" IS '内容';
COMMENT ON COLUMN "sys_notice"."sender" IS '发送人';
COMMENT ON COLUMN "sys_notice"."accept" IS '接收者';
COMMENT ON COLUMN "sys_notice"."type" IS '类型';
COMMENT ON COLUMN "sys_notice"."create_by" IS '创建人';
COMMENT ON COLUMN "sys_notice"."create_time" IS '创建时间';
COMMENT ON COLUMN "sys_notice"."update_by" IS '修改人';
COMMENT ON COLUMN "sys_notice"."update_time" IS '修改时间';
COMMENT ON COLUMN "sys_notice"."remark" IS '备注';

