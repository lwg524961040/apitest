DROP TABLE IF EXISTS "sys_log";

CREATE TABLE "sys_log" (
  "id" char(19) NOT NULL,
  "title" varchar(255),
  "method" varchar(255),
  "business_type" varchar(255),
  "request_method" varchar(255),
  "operate_name" varchar(255),
  "operate_url" varchar(255),
  "operate_address" varchar(255),
  "request_param" varchar(255),
  "response_body" varchar(255),
  "success" varchar(255),
  "error_msg" text,
  "create_time" timestamp,
  "description" varchar(255),
  "request_body" varchar(255),
  "browser" varchar(255),
  "system_os" varchar(255),
  "logging_type" varchar(10),
  PRIMARY KEY ("id")
);
COMMENT ON COLUMN "sys_log"."id" IS '相应消息体';
COMMENT ON COLUMN "sys_log"."title" IS '标题';
COMMENT ON COLUMN "sys_log"."method" IS '请求方式';
COMMENT ON COLUMN "sys_log"."business_type" IS '业务类型';
COMMENT ON COLUMN "sys_log"."request_method" IS '请求方法';
COMMENT ON COLUMN "sys_log"."operate_name" IS '操作人';
COMMENT ON COLUMN "sys_log"."operate_url" IS '操作路径';
COMMENT ON COLUMN "sys_log"."operate_address" IS '操作地址';
COMMENT ON COLUMN "sys_log"."request_param" IS '请求参数';
COMMENT ON COLUMN "sys_log"."response_body" IS '相应消息体';
COMMENT ON COLUMN "sys_log"."success" IS '是否成功';
COMMENT ON COLUMN "sys_log"."error_msg" IS '异常信息';
COMMENT ON COLUMN "sys_log"."create_time" IS '创建时间';
COMMENT ON COLUMN "sys_log"."description" IS '描述';
COMMENT ON COLUMN "sys_log"."request_body" IS '请求消息体';
COMMENT ON COLUMN "sys_log"."browser" IS '使用浏览器';
COMMENT ON COLUMN "sys_log"."system_os" IS '操作系统';
COMMENT ON COLUMN "sys_log"."logging_type" IS '日志类型，登录日志，操作日志';

