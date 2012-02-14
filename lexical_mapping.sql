-- TBL_ROOTS example data:
-- -----------------------
--
INSERT INTO tbl_roots (root_id, root, length, semantic_meaning, date_added) VALUES
	(1, {n,t,l}, 3, 'thinking, thought, ideas', 2011-02-11),
	(2, {t,m,s}, 3, 'female', 2011-02-11),
	(3, {p,l,t}, 3, 'to beautify, to adorn', 2011-02-11),
	(4, {s,ş,m}, 3, 'to grow, to be tall', 2011-02-11);
-- 
-- 
-- qevesa_lexicon=> select * from tbl_roots;
--  root_id |  root   | length |     semantic_meaning     | date_added
-- ---------+---------+--------+--------------------------+------------
--        1 | {n,t,l} |      3 | thinking, thought, ideas | 2011-02-11
--        4 | {t,m,s} |      3 | to grow, to be tall      | 2011-02-11
--        3 | {p,l,t} |      3 | to beautify, to adorn    | 2011-02-11
--        2 | {s,ş,m} |      3 | female                   | 2011-02-11
-- (4 rows)
-- 
-- ====================================================================
-- 
-- TBL_PATTERNS example data:
-- --------------------------
-- 
INSERT INTO tbl_patterns (pattern_id, p_type, date_added) VALUES
	(1, 'Verbal noun', 2011-02-11),
	(2, 'Active participle', 2011-02-11),
	(3, 'Passive participle', 2011-02-11),
	(4, 'Locative', 2011-02-11),
	(5, 'Instrument', 2011-02-11),
	(6, 'Intensity, Repetition, Profession', 2011-02-11),
	(7, 'Common Noun', 2011-02-11),
	(8, 'Generic Noun', 2011-02-11),
	(9, 'Specific Noun', 2011-02-11),
	(10, 'Profession', 2011-02-11),
	(11, 'Ajectival noun', 2011-02-11),
	(12, 'Attributive (noun)', 2011-02-11),
	(13, 'Verbal infinitive', 2011-02-12);
-- 
-- qevesa_lexicon=> select * from tbl_patterns order by pattern_id;
--  pattern_id |              p_type               | date_added
-- ------------+-----------------------------------+------------
--           1 | Verbal noun                       | 2011-02-11
--           2 | Active participle                 | 2011-02-11
--           3 | Passive participle                | 2011-02-11
--           4 | Locative                          | 2011-02-11
--           5 | Instrument                        | 2011-02-11
--           6 | Intensity, Repetition, Profession | 2011-02-11
--           7 | Common Noun                       | 2011-02-11
--           8 | Generic Noun                      | 2011-02-11
--           9 | Specific Noun                     | 2011-02-11
--          10 | Profession                        | 2011-02-11
--          11 | Ajectival noun                    | 2011-02-11
--          12 | Attributive (noun)                | 2011-02-11
--          13 | Verbal infinitive                 | 2011-02-12
-- (13 rows)
-- 
-- =============================================================
--
-- TBL_PATTERNS_BILITERAL example data:
-- ------------------------------------
INSERT INTO tbl_patterns_biliteral (pattern_id, root_i, root_ii, root_iii, root_iv, root_v, root_vi, root_vii, root_viii, root_ix) VALUES
	(1, 'ya1u2a', 'ya1u22a', 'ya12u2a', 'me11u2a', 'te1u22a', 'ina12u2a', 'i1u22a', 'ya1u22a', 'e1u2a'),
	(2, '1a2oi', '1a22oi', 'ya12a2oi', 'me11a2oi', 'te1a22oi', 'ina12a2oi', 'i1a22oi', '1a22oi', NULL),
	(3, '1o2i', '1o22i', 'ya12o2i', 'me11o2i', 'te1o22i', 'ina12o2i', 'i1o22i', '1o22i', NULL),
	(4, 'a1e2', '1a22e', 'a12é2', 'me11a2e', 'te1a22e', NULL, NULL, NULL, NULL),
	(5, '1i2ait', '1i22ait', NULL, 'me11i2ait', NULL, NULL, NULL, NULL, NULL),
	(6, NULL, '1o22á', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, '1e2é', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, NULL, '1é22a', NULL, NULL, NULL, NULL, NULL, '1é22a', NULL),
	(10, NULL, '1oi22á', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 'ya1u2amne', 'ya1u22amne', 'ya12u2amne', 'me11u2amne', 'te1u22amne', 'ina12u2amne', 'i1u22amne', 'ya1u22amne', NULL),
	(12, NULL, NULL, NULL, NULL, NULL, NULL, 'i1e22a', NULL, NULL),
	(13, '1u2u', '1u22u', '(a)12u2u', 'me11u2u', 'te1u22u', 'ina12u2u', 'i1u22u', '1u22u', 'e1u2u');
--
-- qevesa_lexicon=> select * from tbl_patterns_biliteral order by pattern_id;
--  pattern_id |  root_i   |  root_ii   |  root_iii  |  root_iv   |   root_v   |   root_vi   | root_vii  | root_viii  | root_ix
-- ------------+-----------+------------+------------+------------+------------+-------------+-----------+------------+---------
--           1 | ya1u2a    | ya1u22a    | ya12u2a    | me11u2a    | te1u22a    | ina12u2a    | i1u22a    | ya1u22a    | e1u2a
--           2 | 1a2oi     | 1a22oi     | ya12a2oi   | me11a2oi   | te1a22oi   | ina12a2oi   | i1a22oi   | 1a22oi     |
--           3 | 1o2i      | 1o22i      | ya12o2i    | me11o2i    | te1o22i    | ina12o2i    | i1o22i    | 1o22i      |
--           4 | a1e2      | 1a22e      | a12é2      | me11a2e    | te1a22e    |             |           |            |
--           5 | 1i2ait    | 1i22ait    |            | me11i2ait  |            |             |           |            |
--           6 |           | 1o22á      |            |            |            |             |           |            |
--           8 | 1e2é      |            |            |            |            |             |           |            |
--           9 |           | 1é22a      |            |            |            |             |           | 1é22a      |
--          10 |           | 1oi22á     |            |            |            |             |           |            |
--          11 | ya1u2amne | ya1u22amne | ya12u2amne | me11u2amne | te1u22amne | ina12u2amne | i1u22amne | ya1u22amne |
--          12 |           |            |            |            |            |             | i1e22a    |            |
--          13 | 1u2u      | 1u22u      | (a)12u2u   | me11u2u    | te1u22u    | ina12u2u    | i1u22u    | 1u22u      | e1u2u
-- (12 rows)
 
-- TBL_PATTERNS_TRILITERAL example data:
-- -------------------------------------
-- 
INSERT INTO tbl_patterns_triliteral (pattern_id, root_i, root_ii, root_iii, root_iv, root_v, root_vi, root_vii, root_viii, root_ix) VALUES
	(1, '1u2u3a', '1u22u3a', 'ya12u3a', 'me11u2u3a', 'te1u22u3a', 'ina12u3a', 'i12u33a', 'ya1u23a', NULL),
	(2, '1a2oi3', '1a22oi3', 'ya12a3oi', 'me11a2oi3', 'te1a22oi3', 'ina12a3oi', 'i12a33oi', '1a23oi', NULL),
	(3, '1o2i3', '1o22i3', 'ya12o3i', 'me11o2i3', 'te1o22i3', 'ina12o3i', 'i12o33i', '1o23i', NULL),
	(4, 'a12e3', '1a22e3', 'a12é3', 'me11a2e3', 'te1a22e3', NULL, NULL, NULL, NULL),
	(5, '1u2á3', '1i22á3', NULL, 'me11i2á3', NULL, NULL, NULL, NULL, NULL),
	(6, NULL, '1o22á3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, '1e2é3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1é23a', NULL),
	(10, NULL, '1oi22á3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, '1u2u3amne', '1u22u3amne', 'ya12u3amne', 'me11u2u3amne', 'te1u22u3amne', 'ina12u3amne', 'i12u33amne', 'ya1u23amne', NULL),
	(12, NULL, NULL, NULL, NULL, NULL, NULL, 'i12e33a', NULL, NULL),
	(13, '1u2u3', '1u22u3', '(a)12u3u', 'me11u2u3', 'te1u22u3', 'ina12u3u', 'i12u33u', '1u23u', NULL);
-- 
-- qevesa_lexicon=> select * from tbl_patterns_triliteral order by pattern_id;
--  pattern_id |  root_i   |  root_ii   |  root_iii  |   root_iv    |    root_v    |   root_vi   |  root_vii  | root_viii  | root_ix
-- ------------+-----------+------------+------------+--------------+--------------+-------------+------------+------------+---------
--           1 | 1u2u3a    | 1u22u3a    | ya12u3a    | me11u2u3a    | te1u22u3a    | ina12u3a    | i12u33a    | ya1u23a    |
--           2 | 1a2oi3    | 1a22oi3    | ya12a3oi   | me11a2oi3    | te1a22oi3    | ina12a3oi   | i12a33oi   | 1a23oi     |
--           3 | 1o2i3     | 1o22i3     | ya12o3i    | me11o2i3     | te1o22i3     | ina12o3i    | i12o33i    | 1o23i      |
--           4 | a12e3     | 1a22e3     | a12é3      | me11a2e3     | te1a22e3     |             |            |            |
--           5 | 1u2á3     | 1i22á3     |            | me11i2á3     |              |             |            |            |
--           6 |           | 1o22á3     |            |              |              |             |            |            |
--           8 | 1e2é3     |            |            |              |              |             |            |            |
--           9 |           |            |            |              |              |             |            | 1é23a      |
--          10 |           | 1oi22á3    |            |              |              |             |            |            |
--          11 | 1u2u3amne | 1u22u3amne | ya12u3amne | me11u2u3amne | te1u22u3amne | ina12u3amne | i12u33amne | ya1u23amne |
--          12 |           |            |            |              |              |             | i12e33a    |            |
--          13 | 1u2u3     | 1u22u3     | (a)12u3u   | me11u2u3     | te1u22u3     | ina12u3u    | i12u33u    | 1u23u      |
-- (12 rows)
-- 
-- ==================================================================================================================================
-- 
-- TBL_WORDS example data:
-- -----------------------
-- 
INSERT INTO tbl_words (word_id, root_id, pattern_id, root_form, translation, example, word) VALUES
	(1, 2, 3, 1, 'girl, maiden, young female human', NULL, NULL),
	(2, 4, 12, 7, 'tall', NULL, NULL);
-- 
-- qevesa_lexicon=> select * from tbl_words order by word_id;
--  word_id | root_id | pattern_id | root_form |           translation            | example | word
-- ---------+---------+------------+-----------+----------------------------------+---------+------
--        1 |       2 |          3 |         1 | girl, maiden, young female human |         |
--        2 |       4 |         12 |         7 | tall                             |         |
-- (1 row)
-- 
-- ================================================================================================
-- 
-- So, the word for "girl" is given by the root with id=2, pattern with id=3 and root_form 1 (or i):
-- Root = {s,ş,m}
-- (Length = 3)
-- Form = 1 (i)
-- Pattern = 1o2i3
-- Root * Form + Pattern = soşim
-- 
-- And the word for "tall" is "itmessa", given by:
-- Root = {t,m,s}
-- (Length = 3)
-- Form = 7 (vii)
-- Pattern = i12e33a
-- 
-- It's basically a four-dimensional space that maps every word to a point given
-- by (root, length, form, pattern). But as 'length' is an intrinsic property of
-- every root, we effectively have separate three-dimensional spaces for all roots
-- of a given length (i.e. biliteral, triliteral, and maybe later, quadriliteral
-- and quinquiliteral)
-- 
-- The 'word' column in tbl_words is intentionally left blank as I intend to
-- generate its value when queried, but in about 1–5% of cases the word cannot or
-- is not derived.
