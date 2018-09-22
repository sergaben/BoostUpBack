

--- !Ups
CREATE TABLE Post
(
    id integer NOT NULL DEFAULT nextval('"post_id_seq"'::regclass),
    created_at timestamp(0) without time zone NOT NULL,
    content text COLLATE pg_catalog."default" NOT NULL,
    created_by integer NOT NULL,
    creator_nickname character varying(45) COLLATE pg_catalog."default" NOT NULL,
    related_subject character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "post_pkey" PRIMARY KEY (id),
    CONSTRAINT "post_created_by_fkey" FOREIGN KEY (created_by)
        REFERENCES public."student" (id_student) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

--- !Downs

DROP TABLE Post
