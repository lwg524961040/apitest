DROP TABLE IF EXISTS "sys_dynamic_api";

CREATE TABLE "sys_dynamic_api" (
  "id" varchar(255) NOT NULL,
  "datasource_id" varchar(255),
  "table_name" varchar(255),
  "api_route" varchar(255),
  "enable" char(1),
  "create_by" char(19),
  "create_time" timestamp,
  "update_by" char(19),
  "update_time" timestamp,
  "remark" varchar(255),
  PRIMARY KEY ("id")
);
COMMENT ON COLUMN "sys_dynamic_api"."datasource_id" IS '数据源id';
COMMENT ON COLUMN "sys_dynamic_api"."table_name" IS '表名';
COMMENT ON COLUMN "sys_dynamic_api"."api_route" IS '动态路由里大括号的部分';
COMMENT ON COLUMN "sys_dynamic_api"."enable" IS '是否启用';

