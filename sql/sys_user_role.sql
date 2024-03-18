DROP TABLE IF EXISTS "sys_user_role";

CREATE TABLE "sys_user_role" (
  "id" char(19) NOT NULL,
  "user_id" char(19),
  "role_id" char(19),
  PRIMARY KEY ("id")
);
COMMENT ON COLUMN "sys_user_role"."id" IS '标识';
COMMENT ON COLUMN "sys_user_role"."user_id" IS '用户编号';
COMMENT ON COLUMN "sys_user_role"."role_id" IS '角色编号';

