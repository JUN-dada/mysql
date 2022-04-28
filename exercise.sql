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
