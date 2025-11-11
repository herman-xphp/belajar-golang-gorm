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
