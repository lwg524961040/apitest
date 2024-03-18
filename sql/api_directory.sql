DROP TABLE IF EXISTS "api_directory";

CREATE TABLE "api_directory" (
  "id" varchar(45) NOT NULL,
  "name" varchar(45),
  "path" varchar(200),
  "parent_id" varchar(45),
  "service" varchar(45),
  PRIMARY KEY ("id")
);

