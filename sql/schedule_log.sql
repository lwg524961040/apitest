DROP INDEX "job_id";

DROP TABLE IF EXISTS "schedule_log";

CREATE TABLE "schedule_log" (
  "log_id" char(19) NOT NULL,
  "job_id" char(19) NOT NULL,
  "bean_name" varchar(200),
  "params" varchar(2000),
  "status" int2 NOT NULL,
  "error" varchar(2000),
  "times" int4 NOT NULL,
  "create_time" timestamp,
  PRIMARY KEY ("log_id")
);
CREATE INDEX "job_id" ON "schedule_log" USING btree (
  "job_id" ASC
);
COMMENT ON COLUMN "schedule_log"."log_id" IS '任务日志id';
COMMENT ON COLUMN "schedule_log"."job_id" IS '任务id';
COMMENT ON COLUMN "schedule_log"."bean_name" IS 'spring bean名称';
COMMENT ON COLUMN "schedule_log"."params" IS '参数';
COMMENT ON COLUMN "schedule_log"."status" IS '任务状态    0：成功    1：失败';
COMMENT ON COLUMN "schedule_log"."error" IS '失败信息';
COMMENT ON COLUMN "schedule_log"."times" IS '耗时(单位：毫秒)';
COMMENT ON COLUMN "schedule_log"."create_time" IS '创建时间';
COMMENT ON TABLE "schedule_log" IS '定时任务日志';

