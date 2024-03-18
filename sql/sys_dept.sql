DROP TABLE IF EXISTS "sys_dept";

CREATE TABLE "sys_dept" (
  "dept_id" varchar(20) NOT NULL,
  "parent_id" varchar(20),
  "dept_name" varchar(50),
  "sort" int4,
  "leader" varchar(50),
  "phone" varchar(20),
  "email" varchar(50),
  "status" varchar(1),
  "create_by" varchar(19),
  "create_time" timestamp,
  "update_by" varchar(19),
  "update_time" timestamp,
  "remark" text,
  "address" varchar(255),
  PRIMARY KEY ("dept_id")
);
COMMENT ON COLUMN "sys_dept"."dept_id" IS '部门名称';
COMMENT ON COLUMN "sys_dept"."parent_id" IS '父级编号';
COMMENT ON COLUMN "sys_dept"."dept_name" IS '部门名称';
COMMENT ON COLUMN "sys_dept"."sort" IS '排序';
COMMENT ON COLUMN "sys_dept"."leader" IS '负责人';
COMMENT ON COLUMN "sys_dept"."phone" IS '联系方式';
COMMENT ON COLUMN "sys_dept"."email" IS '邮箱';
COMMENT ON COLUMN "sys_dept"."status" IS '部门状态';
COMMENT ON COLUMN "sys_dept"."create_by" IS '创建人';
COMMENT ON COLUMN "sys_dept"."create_time" IS '创建时间';
COMMENT ON COLUMN "sys_dept"."update_by" IS '修改人';
COMMENT ON COLUMN "sys_dept"."update_time" IS '修改时间';
COMMENT ON COLUMN "sys_dept"."remark" IS '备注';
COMMENT ON COLUMN "sys_dept"."address" IS '详细地址';

