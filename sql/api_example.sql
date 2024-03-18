DROP INDEX "index_api_id";

DROP TABLE IF EXISTS "api_example";

CREATE TABLE "api_example" (
  "id" varchar(45) NOT NULL,
  "api_info_id" varchar(45) NOT NULL,
  "method" varchar(45),
  "url" text,
  "request_header" text,
  "request_body" text,
  "response_header" text,
  "response_body" text,
  "status" varchar(10),
  "elapsed_time" int4,
  "options" text,
  "editor" varchar(45),
  "create_time" varchar(45),
  PRIMARY KEY ("id")
);
CREATE INDEX "index_api_id" ON "api_example" USING btree (
  "api_info_id" ASC
);
COMMENT ON TABLE "api_example" IS '模拟数据';

