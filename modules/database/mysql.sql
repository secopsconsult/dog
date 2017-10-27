create database dog;
use database dog;

create table `workspace` (
	id bigint(11) NOT NULL auto_increment primary key,
	name varchar(255),
	description text,
);

create table `scope` (
	id bigint(11) NOT NULL auto_increment primary key,
	workspaceid bigint(11),
        value varchar(255),
	type enum('cidr','domain','wildcard'),
        derived enum('0','1'),
	date_added datetime,
);

create table `issues` )
        id bigint(11) NOT NULL auto_increment primary key,
        workspaceid bigint(11),
	scopeid bigint(11),
	description text,
);


