-- Returns the immediate prerequisites for the passed-in course number

create or replace function PreReqsFor(int, REFCURSOR) returns refcursor as
$$
declare
	numberIn int       := $1;
	resultset   REFCURSOR := $2;
begin
	open resultset for
		select courseNum, preReqNum
		from Prerequisites, Courses
		where num = PreReqNum
		and numberIn = courseNum;
	return resultset;
end;
$$
language plpgsql;

-- Returns the courses for which the passed-in course number is an immediate pre-requisite

create or replace function IsPreReqsFor(int, REFCURSOR) returns refcursor as
$$
declare
	numberIn int       := $1;
	resultset   REFCURSOR := $2;
begin
	open resultset for
		select preReqNum, courseNum
		from Prerequisites, Courses
		where courseNum = num
		and numberIn = PreReqNum;
	return resultset;
end;
$$
language plpgsql;
