DROP TABLE IF EXISTS "sys_user";

CREATE TABLE "sys_user" (
  "user_id" char(19) NOT NULL,
  "username" char(20),
  "password" char(60),
  "salt" char(10),
  "status" char(1),
  "real_name" char(8),
  "email" char(20),
  "avatar" varchar(30),
  "sex" char(1),
  "phone" char(11),
  "create_time" timestamp,
  "create_by" char(19),
  "update_time" timestamp,
  "update_by" char(19),
  "remark" varchar(255),
  "enable" char(1),
  "login" char(1),
  "dept_id" char(19),
  "last_time" timestamp,
  PRIMARY KEY ("user_id")
);
COMMENT ON COLUMN "sys_user"."user_id" IS '编号';
COMMENT ON COLUMN "sys_user"."username" IS '账户';
COMMENT ON COLUMN "sys_user"."password" IS '密码';
COMMENT ON COLUMN "sys_user"."salt" IS '姓名';
COMMENT ON COLUMN "sys_user"."status" IS '状态';
COMMENT ON COLUMN "sys_user"."real_name" IS '姓名';
COMMENT ON COLUMN "sys_user"."email" IS '邮箱';
COMMENT ON COLUMN "sys_user"."avatar" IS '头像';
COMMENT ON COLUMN "sys_user"."sex" IS '性别';
COMMENT ON COLUMN "sys_user"."phone" IS '电话';
COMMENT ON COLUMN "sys_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "sys_user"."create_by" IS '创建人';
COMMENT ON COLUMN "sys_user"."update_time" IS '修改时间';
COMMENT ON COLUMN "sys_user"."update_by" IS '修改人';
COMMENT ON COLUMN "sys_user"."remark" IS '备注';
COMMENT ON COLUMN "sys_user"."enable" IS '是否启用';
COMMENT ON COLUMN "sys_user"."login" IS '是否登录';
COMMENT ON COLUMN "sys_user"."dept_id" IS '部门编号';
COMMENT ON COLUMN "sys_user"."last_time" IS '最后一次登录时间';

