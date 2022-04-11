create table student
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
comment='学生表' charset='utf8';
