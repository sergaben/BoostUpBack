

--- !Ups

CREATE TABLE subject
(
    subject_id integer NOT NULL DEFAULT nextval('subject_subject_id_seq'::regclass),
    subject_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT subject_pkey PRIMARY KEY (subject_id),
    CONSTRAINT "subjectUniqueName" UNIQUE (subject_name)
)

--- !Downs

DROP TABLE subject
