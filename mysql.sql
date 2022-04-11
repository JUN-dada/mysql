student> create table student
         (
         `student_id` int(10) primary key not null  auto_increment comment '学生id',
         `student_name` varchar(20) not null comment '学生姓名',
         `student_sex` varchar(10) not null comment '性别',
         `student_phone` varchar(12) not null comment '电话号码',
         `student_status` varchar(20) not null comment '职位',
         `student_college` text not null comment '学院',
         `student_major` text not null comment '专业',
         `student_age` int(3) not null comment '年龄'
         )
         comment='学生表' charset='utf8'
[2022-04-11 16:04:21] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-04-11 16:04:21] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-04-11 16:04:21] [HY000][3719] 'utf8' is currently an alias for the character set UTF8MB3, but will be an alias for UTF8MB4 in a future release. Please consider using UTF8MB4 in order to be unambiguous.
[2022-04-11 16:04:21] 在 12 ms 内完成
student> insert into student
             (student_id, student_name, student_sex, student_phone, student_status, student_college, student_major, student_age)
             value
             ('001','子俊','男','15284040404','学生','互联网+','软件技术','18')
[2022-04-11 16:29:35] 13 ms 中有 1 行受到影响
student> insert into student
             (student_id, student_name, student_sex, student_phone, student_status, student_college, student_major, student_age)
             value
             ('002','吴迪','男','15284040404','学生','互联网+','软件技术','18')
[2022-04-11 16:30:12] 5 ms 中有 1 行受到影响
student> insert into student
             (student_id, student_name, student_sex, student_phone, student_status, student_college, student_major, student_age)
             value
             ('002','西林','男','15284040454','学生','互联网+','软件技术','18')
[2022-04-11 16:30:46] [23000][1062] Duplicate entry '2' for key 'student.PRIMARY'
[2022-04-11 16:30:46] [23000][1062] Duplicate entry '2' for key 'student.PRIMARY'
student> insert into student
             (student_id, student_name, student_sex, student_phone, student_status, student_college, student_major, student_age)
             value
             ('003','西林','男','15284040454','学生','互联网+','软件技术','18')
[2022-04-11 16:30:52] 3 ms 中有 1 行受到影响
student> insert into student
             (student_id, student_name, student_sex, student_phone, student_status, student_college, student_major, student_age)
             value
             ('004','西1林','男','15284040324','学生','互联网+','软件技术','18')
[2022-04-11 16:31:12] 5 ms 中有 1 行受到影响
student> insert into student
             (student_id, student_name, student_sex, student_phone, student_status, student_college, student_major, student_age)
             value
             ('004','西2林','男','15284040325','学生','互联网+','软件技术','19')
[2022-04-11 16:31:35] [23000][1062] Duplicate entry '4' for key 'student.PRIMARY'
[2022-04-11 16:31:35] [23000][1062] Duplicate entry '4' for key 'student.PRIMARY'
student> insert into student
             (student_id, student_name, student_sex, student_phone, student_status, student_college, student_major, student_age)
             value
             ('005','西2林','男','15284040325','学生','互联网+','软件技术','19')
[2022-04-11 16:31:40] 11 ms 中有 1 行受到影响
student> insert into student
             (student_id, student_name, student_sex, student_phone, student_status, student_college, student_major, student_age)
             value
             ('006','西3林','男','15284040329','学生','互联网+','软件技术','18')
[2022-04-11 16:31:53] 5 ms 中有 1 行受到影响
student> insert into student
             (student_id, student_name, student_sex, student_phone, student_status, student_college, student_major, student_age)
             value
             ('007','西6琳','男','15284040329','学生','互联网+','软件技术','18')
[2022-04-11 16:32:08] 4 ms 中有 1 行受到影响
student> insert into student
             (student_id, student_name, student_sex, student_phone, student_status, student_college, student_major, student_age)
             value
             ('008','西9琳','男','15284040349','学生','互联网+','软件技术','18')
[2022-04-11 16:32:19] 4 ms 中有 1 行受到影响
student> insert into student
             (student_id, student_name, student_sex, student_phone, student_status, student_college, student_major, student_age)
             value
             ('009','老八','男','15284040249','学生','互联网+','软件技术','17')
[2022-04-11 16:32:53] 9 ms 中有 1 行受到影响
student> insert into student
             (student_id, student_name, student_sex, student_phone, student_status, student_college, student_major, student_age)
             value
             ('010','老八','男','15284040249','学生','互联网+','芯片学院','17')
[2022-04-11 16:33:23] 3 ms 中有 1 行受到影响
student> update student set student_name='老十八' where student_id=010
[2022-04-11 16:47:33] 6 ms 中有 1 行受到影响
student> delete from student where student_id='007'
[2022-04-11 16:51:49] 4 ms 中有 1 行受到影响
student> select * from student where student.student.student_phone='15284070752'
[2022-04-11 16:52:44] 在 42 ms (execution: 4 ms, fetching: 38 ms) 内检索到 0 行
student> select * from student where student.student.student_phone='15284040404'
[2022-04-11 16:53:03] 在 31 ms (execution: 3 ms, fetching: 28 ms) 内检索到从 1 开始的 2 行
