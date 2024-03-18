DROP INDEX "unique_path_method";

DROP TABLE IF EXISTS "api_info";

CREATE TABLE "api_info" (
  "id" varchar(45) NOT NULL,
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
  "update_time" varchar(45),
  PRIMARY KEY ("id")
);
CREATE UNIQUE INDEX "unique_path_method" ON "api_info" USING btree (
  "service" ASC,
  "full_path" ASC,
  "method" ASC
);
COMMENT ON COLUMN "api_info"."type" IS '类型：CODE,QL';
COMMENT ON TABLE "api_info" IS '路径明细';

