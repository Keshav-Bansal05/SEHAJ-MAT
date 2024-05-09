SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE admin (
  id int(11) NOT NULL,
  username varchar(50) NOT NULL,
  password varchar(60) NOT NULL,
  firstname varchar(50) NOT NULL,
  lastname varchar(50) NOT NULL,
  photo varchar(150) NOT NULL,
  created_on date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO admin (id, username, password, firstname, lastname, photo, created_on) VALUES
(1, 'Keshav', '$2y$10$3nrTAOhzcsV7mJxzEzAoq.rkxylgbt1X7IzWZZDrpVcCS2moLefTi', 'Keshav', 'Bansal', 'Keshav.jpg', '2024-02-06');


CREATE TABLE candidates (
  id int(11) NOT NULL,
  position_id int(11) NOT NULL,
  firstname varchar(30) NOT NULL,
  lastname varchar(30) NOT NULL,
  photo varchar(150) NOT NULL,
  platform text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO candidates (id, position_id, firstname, lastname, photo, platform) VALUES ('1', '1', 'Modi', 'BJP', 'Modi.jpg', 'Prime Minister');
INSERT INTO candidates (id, position_id, firstname, lastname, photo, platform) VALUES ('2', '1', 'Gandi', 'Congress', 'Rahul.jpg', 'Prime Minister');
INSERT INTO candidates (id, position_id, firstname, lastname, photo, platform) VALUES ('3', '1', 'Kejriwal', 'AAP', 'Kejri.jpg', 'Prime Minister');
INSERT INTO candidates (id, position_id, firstname, lastname, photo, platform) VALUES ('4', '1', 'Dhruv Rathee', 'Anti-Modi', 'Rathee.jpg', 'Prime Minister');
INSERT INTO candidates (id, position_id, firstname, lastname, photo, platform) VALUES ('5', '2', 'Modi', 'BJP', 'Modi.jpg', 'Chief Minister');
INSERT INTO candidates (id, position_id, firstname, lastname, photo, platform) VALUES ('6', '2', 'Gandi', 'Congress', 'Rahul.jpg', 'Chief Minister');
INSERT INTO candidates (id, position_id, firstname, lastname, photo, platform) VALUES ('7', '2', 'Kejriwal', 'AAP', 'Kejri.jpg', 'Chief Minister');
INSERT INTO candidates (id, position_id, firstname, lastname, photo, platform) VALUES ('8', '2', 'Dhruv Rathee', 'Anti-Modi', 'Rathee.jpg', 'Chief Minister');



CREATE TABLE positions (
  id int(11) NOT NULL,
  description varchar(50) NOT NULL,
  max_vote int(11) NOT NULL,
  priority int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO positions (id, description, max_vote, priority) VALUES ('1', 'PRIME MINISTER', '1', '1');
INSERT INTO positions (id, description, max_vote, priority) VALUES ('2', 'Chief MINISTER', '1', '2');


CREATE TABLE voters (
  id int(11) NOT NULL,
  voters_id varchar(15) NOT NULL,
  password varchar(60) NOT NULL,
  firstname varchar(30) NOT NULL,
  lastname varchar(30) NOT NULL,
  photo varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO voters (id, voters_id, password, firstname, lastname, photo) VALUES ('1', '102217207', '$2y$10$tjrKXNX9HTks6lajBHcKceTuvHb.AFNVyOYIuuJBZJ.Nz3YsSspyW', 'Rijul', 'Bansal', 'Rijul.jpg');
INSERT INTO voters (id, voters_id, password, firstname, lastname, photo) VALUES ('2', '102217182', '$2y$10$Ka0rRT6qNzgfLpCFOW36/O7q.4RkEbaA3f9meE4TmN.B8y0edxODG', 'Jyotansh', 'Mohendru', 'Jyotansh.jpg');
INSERT INTO voters (id, voters_id, password, firstname, lastname, photo) VALUES ('3', '102217213', '$2y$10$5n8ZmQ2g261rXdogTqBmcuYf5szBk1i1vSbLB9C5J7i7YhBjItuMa', 'Gitik', 'Jindal', 'Gitik.jpg');
INSERT INTO voters (id, voters_id, password, firstname, lastname, photo) VALUES ('4', '102217215', '$2y$10$37xtbPMktOoWj5BBOiU/2eZ0MQgsffwUNhKnB2QA6GblZRlS4N9By', 'Keshav', 'Bansal', 'Keshav.jpg');
INSERT INTO voters (id, voters_id, password, firstname, lastname, photo) VALUES ('5', '102217221', '$2y$10$bJS2c2OhrFnm7T7AM6ocz.V.6LCtT2Vfv.DMxEBqFgeLgyC4EWEnG', 'Dhruv', 'Aggarwal', 'Dhruv.jpg');
INSERT INTO voters (id, voters_id, password, firstname, lastname, photo) VALUES ('6', '102213488', '$2y$10$Ew1ICvTpztkUMs4waiTZm.IYEbQAuSB9.0mMXn..igVUWs5oWvHxW', 'Devansh', 'Bhakhri', 'Devansh.jpg');


CREATE TABLE votes (
  id int(11) NOT NULL,
  voters_id int(11) NOT NULL,
  candidate_id int(11) NOT NULL,
  position_id int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE admin
  ADD PRIMARY KEY (id);


ALTER TABLE candidates
  ADD PRIMARY KEY (id);


ALTER TABLE positions
  ADD PRIMARY KEY (id);


ALTER TABLE voters
  ADD PRIMARY KEY (id);


ALTER TABLE votes
  ADD PRIMARY KEY (id);


ALTER TABLE admin
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE candidates
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;


ALTER TABLE positions
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE voters
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE votes
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;