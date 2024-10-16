-- Active: 1729017636759@@127.0.0.1@9042@system
CREATE KEYSPACE examresults WITH replication = {'class':'SimpleStrategy', 'replication_factor':2};

USE examresults;

CREATE TABLE studentresults (
    studentid int,
    firstname text,
    lastname text,
    examid int,
    examdate date,
    score decimal,
    grade varchar,
    PRIMARY KEY (studentid, examid)
)

SELECT *
FROM studentresults
WHERE
    firstname = 'Randall' ALLOW FILTERING;