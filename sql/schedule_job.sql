DROP TABLE IF EXISTS "schedule_job";

CREATE TABLE "schedule_job" (
  "job_id" char(19) NOT NULL,
  "bean_name" varchar(200),
  "params" varchar(2000),
  "cron_expression" varchar(100),
  "status" int2,
  "remark" varchar(255),
  "create_time" timestamp,
  "job_name" varchar(255),
  PRIMARY KEY ("job_id")
);
COMMENT ON COLUMN "schedule_job"."job_id" IS '任务id';
COMMENT ON COLUMN "schedule_job"."bean_name" IS 'spring bean名称';
COMMENT ON COLUMN "schedule_job"."params" IS '参数';
COMMENT ON COLUMN "schedule_job"."cron_expression" IS 'cron表达式';
COMMENT ON COLUMN "schedule_job"."status" IS '任务状态  0：正常  1：暂停';
COMMENT ON COLUMN "schedule_job"."remark" IS '备注';
COMMENT ON COLUMN "schedule_job"."create_time" IS '创建时间';
COMMENT ON TABLE "schedule_job" IS '定时任务';

