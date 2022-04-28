[2022-04-28 16:47:44] 已连接
> create database exercise
[2022-04-28 16:47:44] 3 ms 中有 1 行受到影响
> use exercise
[2022-04-28 16:47:49] 在 2 ms 内完成
exercise> create table students
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
[2022-04-28 16:47:52] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-04-28 16:47:52] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-04-28 16:47:52] [HY000][3719] 'utf8' is currently an alias for the character set UTF8MB3, but will be an alias for UTF8MB4 in a future release. Please consider using UTF8MB4 in order to be unambiguous.
[2022-04-28 16:47:52] 在 24 ms 内完成
exercise> create table college
                   (
                  `collage_number` int(10) not null  auto_increment,
                  `college_id` int(11) NOT NULL AUTO_INCREMENT primary key ,
                  `college_name` varchar(255) NOT NULL
                   )
                   comment='学院表' charset='utf8'
[2022-04-28 16:52:00] [42000][1075] Incorrect table definition; there can be only one auto column and it must be defined as a key
[2022-04-28 16:52:00] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-04-28 16:52:00] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-04-28 16:52:00] [HY000][3719] 'utf8' is currently an alias for the character set UTF8MB3, but will be an alias for UTF8MB4 in a future release. Please consider using UTF8MB4 in order to be unambiguous.
[2022-04-28 16:52:00] [42000][1075] Incorrect table definition; there can be only one auto column and it must be defined as a key
exercise> create table college
                   (
                  `collage_number` int(10) not null,
                  `college_id` int(11) NOT NULL AUTO_INCREMENT primary key ,
                  `college_name` varchar(255) NOT NULL
                   )
                   comment='学院表' charset='utf8'
[2022-04-28 16:52:27] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-04-28 16:52:27] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-04-28 16:52:27] [HY000][3719] 'utf8' is currently an alias for the character set UTF8MB3, but will be an alias for UTF8MB4 in a future release. Please consider using UTF8MB4 in order to be unambiguous.
[2022-04-28 16:52:27] 在 11 ms 内完成
exercise> create table student
                   (
                   `student_id` int(10) primary key not null  auto_increment comment '学生id',
                   `student_name` varchar(20) not null comment '学生姓名',
                   `student_sex` varchar(10) not null comment '性别',
                   `student_phone` varchar(12) not null comment '电话号码',
                   `student_status` varchar(20) not null comment '职位',
                   `student_college` text not null comment '学院',
                   `student_major` text not null comment '专业',
                   `student_age` int(3) not null comment '年龄',
                   `collage_number` int(5) not null comment '学院数字'
                   )
                   comment='学生表' charset='utf8'
[2022-04-28 16:54:07] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-04-28 16:54:07] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-04-28 16:54:07] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-04-28 16:54:07] [HY000][3719] 'utf8' is currently an alias for the character set UTF8MB3, but will be an alias for UTF8MB4 in a future release. Please consider using UTF8MB4 in order to be unambiguous.
[2022-04-28 16:54:07] 在 11 ms 内完成
exercise> create table teacher
                   (
                   `collage_number` int(5) not null comment '学院数字',
                   `teacher_name`  varchar(20) not null comment '老师名字',
                   `teacher_tel`  int(11) not null comment '老师电话',
                   `teacher_collagename` varchar(20) not null comment '老师所属的学院'
                   )
                   comment='老师表' charset='utf8'
[2022-04-28 16:57:27] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-04-28 16:57:27] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-04-28 16:57:27] [HY000][3719] 'utf8' is currently an alias for the character set UTF8MB3, but will be an alias for UTF8MB4 in a future release. Please consider using UTF8MB4 in order to be unambiguous.
[2022-04-28 16:57:27] 在 11 ms 内完成
exercise> insert into `student` value ('01','子俊','男','15284070757','学生','互联网+','软件开发','18','01')
[2022-04-28 17:06:19] 5 ms 中有 1 行受到影响
exercise> insert into `student` value ('02','张三','男','15284070767','学生','互联网+','软件开发','18','01')
[2022-04-28 17:07:08] 4 ms 中有 1 行受到影响
exercise> insert into `student` value ('02','张四','男','15284070777','学生','互联网+','软件开发','19','01')
[2022-04-28 17:07:51] [23000][1062] Duplicate entry '2' for key 'student.PRIMARY'
[2022-04-28 17:07:51] [23000][1062] Duplicate entry '2' for key 'student.PRIMARY'
exercise> value ('02','张四','男','15284070777','学生','互联网+','软件开发','19','01')
[2022-04-28 17:07:56] [42000][1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'value ('02','张四','男','15284070777','学生','互联网+','软件开发','1' at line 1
[2022-04-28 17:07:56] [42000][1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'value ('02','张四','男','15284070777','学生','互联网+','软件开发','1' at line 1
exercise> insert into `student` value ('03','张四','男','15284070777','学生','互联网+','软件开发','19','01')
[2022-04-28 17:08:06] 4 ms 中有 1 行受到影响
exercise> insert into `student` value ('04','张五','男','1528407087','学生','互联网+','应用技术','19','02')
[2022-04-28 17:08:40] 3 ms 中有 1 行受到影响
exercise> insert into `student` value ('04','张六','男','1528407017','学生','互联网+','应用技术','17','02')
[2022-04-28 17:09:10] [23000][1062] Duplicate entry '4' for key 'student.PRIMARY'
[2022-04-28 17:09:10] [23000][1062] Duplicate entry '4' for key 'student.PRIMARY'
exercise> value ('04','张六','男','1528407117','学生','互联网+','应用技术','17','02')
[2022-04-28 17:10:04] [42000][1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'value ('04','张六','男','1528407117','学生','互联网+','应用技术','17' at line 1
[2022-04-28 17:10:04] [42000][1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'value ('04','张六','男','1528407117','学生','互联网+','应用技术','17' at line 1
exercise> insert into `student` value ('04','张六','男','1528407117','学生','互联网+','应用技术','17','02')
[2022-04-28 17:10:07] [23000][1062] Duplicate entry '4' for key 'student.PRIMARY'
[2022-04-28 17:10:07] [23000][1062] Duplicate entry '4' for key 'student.PRIMARY'
exercise> insert into `student` value ('04','张六','男','1528401087','学生','互联网+','应用技术','19','02')
[2022-04-28 17:10:54] [23000][1062] Duplicate entry '4' for key 'student.PRIMARY'
[2022-04-28 17:10:54] [23000][1062] Duplicate entry '4' for key 'student.PRIMARY'
exercise> insert into `student` value ('05','张六','男','1528401087','学生','互联网+','应用技术','19','02')
[2022-04-28 17:11:02] 5 ms 中有 1 行受到影响
exercise> insert into `student` value ('06','张七','男','1528401287','学生','互联网+','应用技术','18','02')
[2022-04-28 17:11:26] 4 ms 中有 1 行受到影响
exercise> insert into `student` value ('07','张八','男','1538401287','学生','互联网+','手错芯片','18','03')
[2022-04-28 17:12:10] 6 ms 中有 1 行受到影响
exercise> insert into `student` value ('08','张九','女','1538421287','学生','互联网+','手搓芯片','19','03')
[2022-04-28 17:12:53] 4 ms 中有 1 行受到影响
exercise> insert into `student` value ('09','张十','女','2538421287','学生','互联网+','手搓芯片','21','03')
[2022-04-28 17:13:56] 3 ms 中有 1 行受到影响
exercise> insert into `student` value ('10','张一','男','3538421287','学生','互联网+','手搓芯片','20','03')
[2022-04-28 17:14:19] 3 ms 中有 1 行受到影响
exercise> alter table `student` modify `student_age` int after `student_id`
[2022-04-28 17:19:28] 在 25 ms 内完成
exercise> alter table `student` modify `student_sex` int after `student_age`
[2022-04-28 17:20:06] [HY000][1366] Incorrect integer value: '男' for column 'student_sex' at row 1
[2022-04-28 17:20:06] [HY000][1366] Incorrect integer value: '男' for column 'student_sex' at row 1
exercise> alter table `student` modify `student_sex` varchar after `student_age`
[2022-04-28 17:20:56] [42000][1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'after `student_age`' at line 1
[2022-04-28 17:20:56] [42000][1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'after `student_age`' at line 1
exercise> alter table `student` modify `student_sex` varchar(10) after `student_age`
[2022-04-28 17:21:03] 在 17 ms 内完成
exercise> insert into `college` value ('1','01','软件技术')
[2022-04-28 17:23:42] 4 ms 中有 1 行受到影响
exercise> insert into `college` value ('2','02','应用技术')
[2022-04-28 17:24:03] 4 ms 中有 1 行受到影响
exercise> insert into `college` value ('3','03','手搓芯片')
[2022-04-28 17:24:22] 3 ms 中有 1 行受到影响
exercise> alter table `college` modify `collage_number` int after `college_id`
[2022-04-28 17:25:17] 在 22 ms 内完成
exercise> insert into `college` value ('4','04','航空学院')
[2022-04-28 17:26:03] 2 ms 中有 1 行受到影响
exercise> '谷雨学院')
[2022-04-28 17:26:17] [42000][1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''谷雨学院')' at line 1
[2022-04-28 17:26:17] [42000][1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''谷雨学院')' at line 1
exercise> insert into `college` value ('5','05','谷雨学院')
[2022-04-28 17:26:53] 3 ms 中有 1 行受到影响
exercise> insert into `college` value ('6','06','新能源学院')
[2022-04-28 17:27:07] 3 ms 中有 1 行受到影响
exercise> insert into `college` value ('7','07','医护学院')
[2022-04-28 17:27:23] 3 ms 中有 1 行受到影响
exercise> insert into `college` value ('8','08','电竞学院')
[2022-04-28 17:27:42] 3 ms 中有 1 行受到影响
exercise> insert into `college` value ('9','09','体育学院')
[2022-04-28 17:27:53] 4 ms 中有 1 行受到影响
exercise> insert into `college` value ('10','10','摸鱼学院')
[2022-04-28 17:28:09] 3 ms 中有 1 行受到影响
exercise> insert into `teacher` value ('1','王一','15284868686','计算机教研室')
[2022-04-28 17:30:01] [22001][1264] Data truncation: Out of range value for column 'teacher_tel' at row 1
[2022-04-28 17:30:01] [22003][1264] Out of range value for column 'teacher_tel' at row 1
exercise> insert into `teacher` value ('1','王一','1528486868','计算机教研室')
[2022-04-28 17:30:19] 4 ms 中有 1 行受到影响
exercise> insert into `teacher` value ('1','王二','1528486848','计算机教研室')
[2022-04-28 17:30:41] 3 ms 中有 1 行受到影响
exercise> insert into `teacher` value ('1','王三','1228486848','计算机教研室')
[2022-04-28 17:31:02] 2 ms 中有 1 行受到影响
exercise> insert into `teacher` value ('1','王四','1528486848','计算机教研室')
[2022-04-28 17:31:30] 4 ms 中有 1 行受到影响
exercise> insert into `teacher` value ('2','王五','1528486848','应用技术教研室')
[2022-04-28 17:32:04] 3 ms 中有 1 行受到影响
exercise> insert into `teacher` value ('2','王六','1528186848','应用技术教研室')
[2022-04-28 17:32:12] 3 ms 中有 1 行受到影响
exercise> insert into `teacher` value ('3','王七','1628186848','手搓芯片教研室')
[2022-04-28 17:32:31] 3 ms 中有 1 行受到影响
exercise> insert into `teacher` value ('3','王八','2628186848','手搓芯片教研室')
[2022-04-28 17:32:42] [22001][1264] Data truncation: Out of range value for column 'teacher_tel' at row 1
[2022-04-28 17:32:42] [22003][1264] Out of range value for column 'teacher_tel' at row 1
exercise> insert into `teacher` value ('3','王八','262186848','手搓芯片教研室')
[2022-04-28 17:32:50] 4 ms 中有 1 行受到影响
exercise> insert into `teacher` value ('4','王十','562186848','摸鱼教研室')
[2022-04-28 17:33:18] 3 ms 中有 1 行受到影响
exercise> update `student` set `student_college`='4',`student_major`='航空专业' where student_id=10
[2022-04-28 17:38:45] 8 ms 中有 1 行受到影响
exercise> update `student` set `collage_number`='4',`student_college`='航空学院' where student_id=10
[2022-04-28 17:39:36] 3 ms 中有 1 行受到影响
