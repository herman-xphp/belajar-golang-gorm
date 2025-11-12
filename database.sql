create table sample(
  id varchar(100) not null,
  name varchar(100) not null,
  primary key (id)
) engine = InnoDB;

select * from sample;

CREATE TABLE users
(
	id varchar(100) NOT NULL,
	password varchar(100) NOT NULL,
	name varchar(100) NOT NULL,
	created_at timestamp NOT NULL DEFAULT current_timestamp,
	updated_at timestamp NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (id)
) engine = InnoDB;

ALTER TABLE users
   rename column name to first_name;

ALTER TABLE users
  ADD COLUMN middle_name varchar(100) null after first_name;

ALTER TABLE users
  ADD COLUMN last_name varchar(100) null
  AFTER middle_name;

create table user_logs
(
  id int not null auto_increment,
  user_id varchar(100) not null,
  action varchar(100) not null,
  created_at timestamp not null default current_timestamp,
  updated_at timestamp not null default current_timestamp on update current_timestamp,
  PRIMARY KEY(id)
) engine = InnoDB;

DELETE FROM user_logs;

ALTER TABLE user_logs
   modify created_at bigint not null;

ALTER TABLE user_logs
   modify updated_at bigint not null;

desc user_logs;

select * from user_logs;
