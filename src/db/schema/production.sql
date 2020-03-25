WITH days(day) AS (
  VALUES ( 'Monday' ), ( 'Tuesday' ), ( 'Wednesday' ), ( 'Thursday' ), ( 'Friday' )
)
INSERT INTO days (name)
SELECT day FROM days;

WITH times(time) AS (
	VALUES ('12pm'), ('1pm'), ('2pm'), ('3pm'), ('4pm')
)
INSERT INTO appointments (time, day_id)
SELECT time, id as day_id FROM days, times ORDER BY day_id, time;

INSERT INTO interviewers (name, avatar)
VALUES
  ('Sonia', 'https://i.imgur.com/twYrpay.jpg'),
  ('Andy', 'https://i.imgur.com/twYrpay.jpg'),
  ('Snake', 'https://i.imgur.com/twYrpay.jpg'),
  ('Dipa', 'https://i.imgur.com/twYrpay.jpg'),
  ('Sundeep', 'https://i.imgur.com/twYrpay.jpg'),
  ('Ayan', 'https://i.imgur.com/twYrpay.jpg'),
  ('Naman', 'https://i.imgur.com/twYrpay.jpg'),
  ('Vikas', 'https://i.imgur.com/twYrpay.jpg'),
  ('Atishay', 'https://i.imgur.com/twYrpay.jpg'),
  ('Anshi', 'https://i.imgur.com/twYrpay.jpg');

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 1 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 2 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 3 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 4 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 5 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;
