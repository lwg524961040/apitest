DROP TABLE IF EXISTS "api_info_history";

CREATE TABLE "api_info_history" (
  "id" varchar(45) NOT NULL,
  "api_info_id" varchar(45) NOT NULL,
  "method" varchar(45),
  "path" varchar(100),
  "type" varchar(5),
  "service" varchar(45),
  "editor" varchar(45),
  "name" varchar(200),
  "datasource" varchar(45),
  "script" text,
  "options" text,
  "create_time" varchar(45),
  "full_path" varchar(200),
  "directory_id" varchar(45),
  PRIMARY KEY ("id")
);
COMMENT ON COLUMN "api_info_history"."type" IS '类型：CODE,QL';
COMMENT ON TABLE "api_info_history" IS '路径明细历史';

