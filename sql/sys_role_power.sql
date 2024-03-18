DROP TABLE IF EXISTS "sys_role_power";

CREATE TABLE "sys_role_power" (
  "id" char(19) NOT NULL,
  "role_id" char(19),
  "power_id" char(19),
  "create_by" char(19),
  "create_time" timestamp,
  "update_by" char(19),
  "update_time" timestamp,
  "remark" varchar(255),
  PRIMARY KEY ("id")
);

