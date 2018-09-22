--  Users schema

--- !Ups
CREATE TABLE student
(
    id_student integer NOT NULL DEFAULT nextval('student_id_student_seq'::regclass),
    nickname character varying(45) COLLATE pg_catalog."default" NOT NULL,
    email character varying(60) COLLATE pg_catalog."default" NOT NULL,
    password character varying(200) COLLATE pg_catalog."default" NOT NULL,
    subject character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "typeOfStudy" character varying(20) COLLATE pg_catalog."default" NOT NULL,
    login_token character varying(80) COLLATE pg_catalog."default",
    CONSTRAINT student_pkey PRIMARY KEY (id_student),
    CONSTRAINT email_is_unique UNIQUE (email),
    CONSTRAINT nickname_is_unique UNIQUE (nickname)
)


--- !Downs
DROP TABLE student
