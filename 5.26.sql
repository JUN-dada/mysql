添加索引
exercise> alter table student add index (student_name)
[2022-05-26 14:28:09] [HY000][1831] Duplicate index 'student_name_2' defined on the table 'exercise.student'. This is deprecated and will be disallowed in a future release.
[2022-05-26 14:28:09] 在 21 ms 内完成

exercise> alter  table student  add  fulltext  (student_name)
[2022-05-26 14:29:54] [HY000][124] InnoDB rebuilding table to add column FTS_DOC_ID
[2022-05-26 14:29:54] 在 39 ms 内完成


对比添加索引前后端速度
exercise> select student_name from student
[2022-05-26 14:35:05] 在 25 ms (execution: 5 ms, fetching: 20 ms) 内检索到从 1 开始的 29 行

exercise> drop index student_name on student
[2022-05-26 14:34:47] 在 9 ms 内完成

exercise> select student_name from student
[2022-05-26 14:32:35] 在 58 ms (execution: 6 ms, fetching: 52 ms) 内检索到从 1 开始的 29 行

多表查询
select student_name,college_name,teacher_name from student,college,teacher where exercise.student.student_name='张三'


触发器
exercise> create table teacher_log
          (
              id int(10) primary key auto_increment,
              addtime timestamp,
              log varchar(255)
          )
[2022-05-26 14:51:46] [HY000][1681] Integer display width is deprecated and will be removed in a future release.
[2022-05-26 14:51:46] 在 9 ms 内完成

//添加日志
create trigger add_log2 after  insert on teacher5 for each row insert into teacher_log values ('1','2022-5-24 09:50:30','添加用户成功')
[2022-05-26 15:54:26] 在 5 ms 内完成
//验证电话
CREATE TRIGGER trigger_check_phone
          	BEFORE INSERT
          		ON teacher5 FOR EACH ROW
          			BEGIN
          			IF (NEW.teacher_tel REGEXP '^[1][35678][0-9]{9}$' = 0)
          			THEN
          			SIGNAL SQLSTATE 'HY001'  SET MESSAGE_TEXT = '对不起，电话格式不正确！！！';
          			END IF;
          			END
