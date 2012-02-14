-- Patterns table
CREATE TABLE tbl_patterns
(
  pattern_id integer NOT NULL DEFAULT nextval('patterns_pattern_id_seq'::regclass),
  p_type text,
  date_added date NOT NULL,
  CONSTRAINT pattern_id_pkey PRIMARY KEY (pattern_id)
);

-- (Bi|Tri)literal Tables
-- Note that the primary key is the pattern_id column from tbl_patterns
CREATE TABLE tbl_patterns_biliteral
(
  pattern_id integer NOT NULL,
  root_i text,
  root_ii text,
  root_iii text,
  root_iv text,
  root_v text,
  root_vi text,
  root_vii text,
  root_viii text,
  root_ix text,
  CONSTRAINT biliteral_pkey PRIMARY KEY (pattern_id),
  CONSTRAINT biliteral_fkey FOREIGN KEY (pattern_id)
      REFERENCES tbl_patterns (pattern_id) MATCH FULL
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE tbl_patterns_triliteral
(
  pattern_id integer NOT NULL,
  root_i text,
  root_ii text,
  root_iii text,
  root_iv text,
  root_v text,
  root_vi text,
  root_vii text,
  root_viii text,
  root_ix text,
  CONSTRAINT triliteral_pkey PRIMARY KEY (pattern_id),
  CONSTRAINT triliteral_fkey FOREIGN KEY (pattern_id)
      REFERENCES tbl_patterns (pattern_id) MATCH FULL
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Roots table
CREATE TABLE tbl_roots
(
  root_id integer NOT NULL DEFAULT nextval('roots_root_id_seq'::regclass),
  root character(1)[], -- The root character set
  length integer NOT NULL DEFAULT 0,
  semantic_meaning text,
  date_added date NOT NULL,
  CONSTRAINT root_id_pkey PRIMARY KEY (root_id)
);

-- Words table
CREATE TABLE tbl_words
(
  word_id integer NOT NULL DEFAULT nextval('words_word_id_seq'::regclass),
  root_id integer, -- Root ID for current word
  pattern_id integer, -- Pattern ID for current word
  root_form integer DEFAULT 1, -- The root form of the word entry
  translation text, -- Word translation
  example text, -- Example sentence containing word
  word text, -- The combined word
  CONSTRAINT word_id_pkey PRIMARY KEY (word_id),
  CONSTRAINT pattern_id_fkey FOREIGN KEY (pattern_id)
      REFERENCES tbl_patterns (pattern_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT root_id_fkey FOREIGN KEY (root_id)
      REFERENCES tbl_roots (root_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT root_form_valid CHECK (root_form > 0 AND root_form < 10)
);
