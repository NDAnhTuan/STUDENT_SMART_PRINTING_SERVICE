CREATE TABLE `assits` (
  `TimeAssit` time NOT NULL,
  `Assit_Player` varchar(6) NOT NULL,
  `Assit_Match` varchar(6) NOT NULL,
  `Assit_HYear` int(11) NOT NULL
);

INSERT INTO `assits` (`TimeAssit`, `Assit_Player`, `Assit_Match`, `Assit_HYear`) VALUES
('12:30:00', 'ARGDF1', 'ARGBEL', 2022),
('13:00:00', 'ARGMF2', 'ARGBEL', 2022),

('16:20:00', 'ARGFW1', 'ARGBRA', 2022),
('16:50:00', 'BRAMF2', 'ARGBRA', 2022),

('13:40:00', 'BRADF3', 'BELBRA', 2022),

('20:20:00', 'ARGMF1', 'ARGESP', 2022),
('20:50:00', 'ARGDF2', 'ARGESP', 2022),
('21:00:00', 'ESPDF1', 'ARGESP', 2022),

('12:25:00', 'ARGDF1', 'ARGFRA', 2022),
('12:40:00', 'FRAMF1', 'ARGFRA', 2022),

('12:30:00', 'BRAFW3', 'BRAESP', 2022),
('13:00:00', 'BRAMF1', 'BRAESP', 2022),

('20:10:00', 'BELDF1', 'BELFRA', 2022),
('20:05:00', 'FRADF3', 'BELFRA', 2022),
('21:00:00', 'FRAMF1', 'BELFRA', 2022);

CREATE TABLE `card` (
  `TypeCard` char(1) NOT NULL,
  `Time` time NOT NULL,
  `Card_Player` varchar(6) NOT NULL,
  `Card_Match` varchar(6) NOT NULL,
  `Card_HYear` int(11) NOT NULL
);

INSERT INTO `card` (`TypeCard`, `Time`, `Card_Player`, `Card_Match`,`Card_HYear`) VALUES
('Y','13:10:00','BELFW1','ARGBEL','2022'),
('Y','13:20:00','ARGFW1','BELBRA','2022'),
('Y','14:00:00','BRAMF1','BELBRA','2022'),
('Y','21:10:00','ESPMF2','ARGESP','2022'),
('Y','17:00:00','BELMF1','BELESP','2022'),
('R','12:50:00','FRADF1','ARGFRA','2022'),
('Y','13:10:00','ESPMF3','BRAESP','2022');

CREATE TABLE `coach` (
  `CoachCode` varchar(6) NOT NULL,
  `CoachCef` varchar(20) DEFAULT NULL,
  `Experience` int(11) DEFAULT NULL,
  `LeadCode` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `coach` (`CoachCode`, `CoachCef`, `Experience`, `LeadCode`) VALUES
('ARGCO1', 'ARG1 UEFA', 5, NULL),
('ARGCO2', 'ARG2 UEFA', 5, 'ARGCO1'),
('BELCO1', 'BEL1 UEFA', 5, NULL),
('BELCO2', 'BEL2 UEFA', 5, 'BELCO1'),
('BRACO1', 'BRA1 UEFA', 5, NULL),
('BRACO2', 'BRA2 UEFA', 5, 'BRACO1'),
('ESPCO1', 'ESP1 UEFA', 5, NULL),
('ESPCO2', 'ESP2 UEFA', 5, 'ESPCO1'),
('FRACO1', 'FRA1 UEFA', 5, NULL),
('FRACO2', 'FRA2 UEFA', 5, 'FRACO1'),
('GERCO1', 'GER1 UEFA', 5, NULL),
('GERCO2', 'GER2 UEFA', 5, 'GERCO1'),
('HRVCO1', 'HRV1 UEFA', 5, NULL),
('HRVCO2', 'HRV2 UEFA', 5, 'HRVCO1'),
('ITACO1', 'ITA1 UEFA', 5, NULL),
('ITACO2', 'ITA2 UEFA', 5, 'ITACO1'),
('JPNCO1', 'JPN1 UEFA', 5, NULL),
('JPNCO2', 'JPN2 UEFA', 5, 'JPNCO1'),
('PRTCO1', 'PRT1 UEFA', 5, NULL),
('PRTCO2', 'PRT2 UEFA', 5, 'PRTCO1');

CREATE TABLE `control_match` (
  `CM_RefeCode` varchar(6) NOT NULL,
  `CM_MatchCode` varchar(6) NOT NULL,
  `CM_HYearCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `control_match` (`CM_RefeCode`, `CM_MatchCode`, `CM_HYearCode`) VALUES
('REFE11', 'ARGBEL', 2022),
('REFE11', 'ARGFRA', 2022),
('REFE11', 'ARGITA', 2022),
('REFE11', 'BELGER', 2022),
('REFE11', 'BRAPRT', 2022),
('REFE11', 'ESPFRA', 2022),
('REFE11', 'FRAGER', 2022),
('REFE11', 'FRAJPN', 2022),
('REFE11', 'GERPRT', 2022),
('REFE11', 'HRVJPN', 2022),
('REFE12', 'ARGBRA', 2022),
('REFE12', 'ARGPRT', 2022),
('REFE12', 'BELHRV', 2022),
('REFE12', 'BRAESP', 2022),
('REFE12', 'BRAJPN', 2022),
('REFE12', 'ESPITA', 2022),
('REFE12', 'ESPPRT', 2022),
('REFE12', 'FRAHRV', 2022),
('REFE12', 'GERJPN', 2022),
('REFE12', 'PRTITA', 2022),
('REFE13', 'ARGJPN', 2022),
('REFE13', 'BELBRA', 2022),
('REFE13', 'BELFRA', 2022),
('REFE13', 'BELITA', 2022),
('REFE13', 'BRAGER', 2022),
('REFE13', 'FRAITA', 2022),
('REFE13', 'HRVITA', 2022),
('REFE13', 'PRTHRV', 2022),
('REFE14', 'ARGESP', 2022),
('REFE14', 'ARGGER', 2022),
('REFE14', 'BELPRT', 2022),
('REFE14', 'BRAHRV', 2022),
('REFE14', 'ESPGER', 2022),
('REFE14', 'ESPJPN', 2022),
('REFE14', 'FRAPRT', 2022),
('REFE14', 'GERHRV', 2022),
('REFE14', 'JPNITA', 2022),
('REFE14', 'PRTJPN', 2022),
('REFE15', 'ARGHRV', 2022),
('REFE15', 'BELESP', 2022),
('REFE15', 'BELJPN', 2022),
('REFE15', 'BRAFRA', 2022),
('REFE15', 'BRAITA', 2022),
('REFE15', 'ESPHRV', 2022),
('REFE15', 'GERITA', 2022),
('REFE16', 'ARGBEL', 2022),
('REFE16', 'ARGFRA', 2022),
('REFE16', 'ARGITA', 2022),
('REFE16', 'BELGER', 2022),
('REFE16', 'BRAPRT', 2022),
('REFE16', 'ESPFRA', 2022),
('REFE16', 'FRAGER', 2022),
('REFE16', 'FRAJPN', 2022),
('REFE16', 'GERPRT', 2022),
('REFE16', 'HRVJPN', 2022),
('REFE17', 'ARGBEL', 2022),
('REFE17', 'ARGBRA', 2022),
('REFE17', 'ARGPRT', 2022),
('REFE17', 'BELHRV', 2022),
('REFE17', 'BRAESP', 2022),
('REFE17', 'BRAJPN', 2022),
('REFE17', 'ESPITA', 2022),
('REFE17', 'ESPPRT', 2022),
('REFE17', 'FRAHRV', 2022),
('REFE17', 'GERJPN', 2022),
('REFE17', 'PRTITA', 2022),
('REFE18', 'ARGJPN', 2022),
('REFE18', 'BELBRA', 2022),
('REFE18', 'BELFRA', 2022),
('REFE18', 'BELITA', 2022),
('REFE18', 'BRAGER', 2022),
('REFE18', 'FRAITA', 2022),
('REFE18', 'HRVITA', 2022),
('REFE18', 'PRTHRV', 2022),
('REFE19', 'ARGESP', 2022),
('REFE19', 'ARGGER', 2022),
('REFE19', 'BELPRT', 2022),
('REFE19', 'BRAHRV', 2022),
('REFE19', 'ESPGER', 2022),
('REFE19', 'ESPJPN', 2022),
('REFE19', 'FRAPRT', 2022),
('REFE19', 'GERHRV', 2022),
('REFE19', 'JPNITA', 2022),
('REFE19', 'PRTJPN', 2022),
('REFE20', 'ARGHRV', 2022),
('REFE20', 'BELESP', 2022),
('REFE20', 'BELJPN', 2022),
('REFE20', 'BRAFRA', 2022),
('REFE20', 'BRAITA', 2022),
('REFE20', 'ESPHRV', 2022),
('REFE20', 'GERITA', 2022),
('REFE21', 'ARGBEL', 2022),
('REFE21', 'ARGFRA', 2022),
('REFE21', 'ARGITA', 2022),
('REFE21', 'BELGER', 2022),
('REFE21', 'BRAPRT', 2022),
('REFE21', 'ESPFRA', 2022),
('REFE21', 'FRAGER', 2022),
('REFE21', 'FRAJPN', 2022),
('REFE21', 'GERPRT', 2022),
('REFE21', 'HRVJPN', 2022),
('REFE22', 'ARGBRA', 2022),
('REFE22', 'ARGPRT', 2022),
('REFE22', 'BELHRV', 2022),
('REFE22', 'BRAESP', 2022),
('REFE22', 'BRAJPN', 2022),
('REFE22', 'ESPITA', 2022),
('REFE22', 'ESPPRT', 2022),
('REFE22', 'FRAHRV', 2022),
('REFE22', 'GERJPN', 2022),
('REFE22', 'PRTITA', 2022),
('REFE23', 'ARGJPN', 2022),
('REFE23', 'BELBRA', 2022),
('REFE23', 'BELFRA', 2022),
('REFE23', 'BELITA', 2022),
('REFE23', 'BRAGER', 2022),
('REFE23', 'FRAITA', 2022),
('REFE23', 'HRVITA', 2022),
('REFE23', 'PRTHRV', 2022),
('REFE24', 'ARGESP', 2022),
('REFE24', 'ARGGER', 2022),
('REFE24', 'BELPRT', 2022),
('REFE24', 'BRAHRV', 2022),
('REFE24', 'ESPGER', 2022),
('REFE24', 'ESPJPN', 2022),
('REFE24', 'FRAPRT', 2022),
('REFE24', 'GERHRV', 2022),
('REFE24', 'JPNITA', 2022),
('REFE24', 'PRTJPN', 2022),
('REFE25', 'ARGHRV', 2022),
('REFE25', 'BELESP', 2022),
('REFE25', 'BELJPN', 2022),
('REFE25', 'BRAFRA', 2022),
('REFE25', 'BRAITA', 2022),
('REFE25', 'ESPHRV', 2022),
('REFE25', 'GERITA', 2022);

DELIMITER $$
CREATE TRIGGER `check_referee_nationality` BEFORE INSERT ON `control_match` FOR EACH ROW BEGIN
    DECLARE ref_nation VARCHAR(50);
    DECLARE team_nation1 VARCHAR(50);
    DECLARE team_nation2 VARCHAR(50);


    SELECT NationName INTO ref_nation
    FROM referee r

    WHERE r.RefID = NEW.CM_RefeCode;


    SELECT n2.Nname INTO team_nation1
    FROM play_in p
    JOIN season_team st1 ON p.TeamPlay = st1.TeamName
    JOIN nation n2 ON st1.T_FFCCode = n2.FFCountryCode
    WHERE p.MatchPlay = NEW.CM_MatchCode
    LIMIT 1;


    SELECT n3.Nname INTO team_nation2
    FROM play_in p
    JOIN season_team st2 ON p.TeamPlay = st2.TeamName
    JOIN nation n3 ON st2.T_FFCCode = n3.FFCountryCode
    WHERE p.MatchPlay = NEW.CM_MatchCode
    LIMIT 1, 1;


    IF (ref_nation = team_nation1 OR ref_nation = team_nation2) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Referee nationality does not match either team''s nationality for this match!';
    END IF;
END
$$
DELIMITER ;



CREATE TABLE `gate_stadium` (
  `GateStadium` int(11) NOT NULL,
  `GS_SCode` varchar(6) NOT NULL
);


INSERT INTO `gate_stadium` (`GateStadium`, `GS_SCode`) VALUES
(1, 'GBRST1'),
(1, 'GBRST2'),
(1, 'GBRST3'),
(1, 'GBRST4'),
(1, 'GBRST5'),
(2, 'GBRST1'),
(2, 'GBRST2'),
(2, 'GBRST3'),
(2, 'GBRST4'),
(2, 'GBRST5'),
(3, 'GBRST1'),
(3, 'GBRST2'),
(3, 'GBRST3'),
(3, 'GBRST4'),
(3, 'GBRST5');


CREATE TABLE `goals` (
  `TimeGoal` time NOT NULL,
  `Goal_Player` varchar(6) NOT NULL,
  `Goal_Match` varchar(6) NOT NULL,
  `Goal_HYear` int(11) NOT NULL
);


INSERT INTO `goals` (`TimeGoal`, `Goal_Player`, `Goal_Match`, `Goal_HYear`) VALUES
('12:30:00', 'ARGFW1', 'ARGBEL', 2022),
('13:00:00', 'ARGFW3', 'ARGBEL', 2022),

('16:20:00', 'ARGFW3', 'ARGBRA', 2022),
('16:50:00', 'BRAFW1', 'ARGBRA', 2022),

('13:40:00', 'BRAFW4', 'BELBRA', 2022),

('20:20:00', 'ARGMF1', 'ARGESP', 2022),
('20:50:00', 'ARGFW1', 'ARGESP', 2022),
('21:00:00', 'ESPFW1', 'ARGESP', 2022),

('12:25:00', 'ARGFW1', 'ARGFRA', 2022),
('12:40:00', 'FRAFW1', 'ARGFRA', 2022),

('12:30:00', 'BRAFW2', 'BRAESP', 2022),
('13:00:00', 'BRAMF2', 'BRAESP', 2022),

('20:10:00', 'BELFW1', 'BELFRA', 2022),
('20:05:00', 'FRAFW1', 'BELFRA', 2022),
('21:00:00', 'FRAMF4', 'BELFRA', 2022);


CREATE TABLE `include` (
  `I_HYearCode` int(11) NOT NULL,
  `I_TeamName` varchar(20) NOT NULL,
  `No_player` int(11) NOT NULL
) ;


INSERT INTO `include` (`I_HYearCode`, `I_TeamName`, `No_player`) VALUES
(2022, 'Argentina22', 14),
(2022, 'Belgium22', 14),
(2022, 'Brazil22', 14),
(2022, 'Croatia22', 14),
(2022, 'France22', 14),
(2022, 'Germany22', 14),
(2022, 'Italia22', 14),
(2022, 'Japan22', 14),
(2022, 'Portugal22', 14),
(2022, 'Spain22', 14);

CREATE TABLE `is_played` (
  `is_PlayedCode` varchar(6) NOT NULL,
  `is_MatchCode` varchar(6) NOT NULL,
  `is_HYearCode` int(11) NOT NULL,
  `Role` varchar(2) NOT NULL,
  `TimeIn` time NOT NULL,
  `TimeOut` time NOT NULL
);


INSERT INTO `is_played` (`is_PlayedCode`, `is_MatchCode`, `is_HYearCode`, `Role`, `TimeIn`, `TimeOut`) VALUES
('ARGFW1', 'ARGBEL', 2022, 'FW', '12:00:00', '14:00:00'),
('ARGFW3', 'ARGBEL', 2022, 'FW', '12:00:00', '14:00:00'),
('ARGDF1', 'ARGBEL', 2022, 'DF', '12:00:00', '14:00:00'),
('ARGMF2', 'ARGBEL', 2022, 'MF', '12:00:00', '14:00:00'),
('BELFW1', 'ARGBEL', 2022, 'FW', '12:00:00', '14:00:00'),

('ARGFW3', 'ARGBRA', 2022, 'FW', '16:00:00', '18:00:00'),
('ARGFW1', 'ARGBRA', 2022, 'FW', '16:00:00', '18:00:00'),
('BRAFW1', 'ARGBRA', 2022, 'FW', '16:00:00', '18:00:00'),
('BRAMF2', 'ARGBRA', 2022, 'MF', '16:00:00', '18:00:00'),

('BRAFW4', 'BELBRA', 2022, 'FW', '12:00:00', '14:00:00'),
('BRADF3', 'BELBRA', 2022, 'DF', '12:00:00', '14:00:00'),
('ARGFW1', 'BELBRA', 2022, 'FW', '12:00:00', '14:00:00'),
('BRAMF1', 'BELBRA', 2022, 'MF', '12:00:00', '14:00:00'),

('ARGMF2', 'ARGESP', 2022, 'MF', '20:00:00', '22:00:00'),
('ARGFW1', 'ARGESP', 2022, 'FW', '20:00:00', '22:00:00'),
('ARGMF1', 'ARGESP', 2022, 'MF', '20:00:00', '22:00:00'),
('ARGDF2', 'ARGESP', 2022, 'DF', '20:00:00', '22:00:00'),
('ESPFW1', 'ARGESP', 2022, 'FW', '20:00:00', '22:00:00'),
('ESPDF1', 'ARGESP', 2022, 'DF', '20:00:00', '22:00:00'),
('ESPMF2', 'ARGESP', 2022, 'MF', '20:00:00', '22:00:00'),

('BELMF1', 'BELESP', 2022, 'MF', '16:00:00', '18:00:00'),

('ARGFW1', 'ARGFRA', 2022, 'FW', '12:00:00', '14:00:00'),
('ARGDF1', 'ARGFRA', 2022, 'DF', '12:00:00', '14:00:00'),
('FRAFW1', 'ARGFRA', 2022, 'FW', '12:00:00', '14:00:00'),
('FRAMF1', 'ARGFRA', 2022, 'MF', '12:00:00', '14:00:00'),
('FRADF1', 'ARGFRA', 2022, 'DF', '12:00:00', '12:50:00'),
('ARGDF2', 'ARGFRA', 2022, 'DF', '12:50:00', '14:00:00'),

('BRAFW2', 'BRAESP', 2022, 'FW', '12:00:00', '14:00:00'),
('BRAMF2', 'BRAESP', 2022, 'MF', '12:00:00', '14:00:00'),
('BRAFW3', 'BRAESP', 2022, 'FW', '12:00:00', '14:00:00'),
('BRAMF1', 'BRAESP', 2022, 'MF', '12:00:00', '14:00:00'),
('ESPMF3', 'BRAESP', 2022, 'MF', '12:00:00', '14:00:00'),

('BELFW1', 'BELFRA', 2022, 'FW', '20:00:00', '22:00:00'),
('BELDF1', 'BELFRA', 2022, 'DF', '20:00:00', '22:00:00'),
('FRAFW1', 'BELFRA', 2022, 'FW', '20:00:00', '22:00:00'),
('FRAMF4', 'BELFRA', 2022, 'MF', '20:00:00', '22:00:00'),
('FRADF3', 'BELFRA', 2022, 'DF', '20:00:00', '22:00:00'),
('FRAMF1', 'BELFRA', 2022, 'MF', '20:00:00', '22:00:00');



CREATE TABLE `matches` (
  `MatchCode` varchar(6) NOT NULL,
  `M_HYearCode` int(11) NOT NULL,
  `TimeStart` time NOT NULL,
  `TimeFinish` time NOT NULL,
  `MatchDate` date NOT NULL,
  `M_SCode` varchar(6) NOT NULL,
  `M_Status` varchar(50) DEFAULT NULL
);


INSERT INTO `matches` (`MatchCode`, `M_HYearCode`, `TimeStart`, `TimeFinish`, `MatchDate`, `M_SCode`, `M_Status`) VALUES
('ARGBEL', 2022, '12:00:00', '14:00:00', '2022-06-21', 'GBRST1', 'Finished'),
('ARGBRA', 2022, '16:00:00', '18:00:00', '2022-06-24', 'GBRST2', 'Finished'),
('ARGESP', 2022, '20:00:00', '22:00:00', '2022-06-27', 'GBRST4', 'Finished'),
('ARGFRA', 2022, '12:00:00', '14:00:00', '2022-06-30', 'GBRST1', 'Finished'),
('ARGGER', 2022, '16:00:00', '18:00:00', '2022-07-03', 'GBRST4', 'Unfinished'),
('ARGHRV', 2022, '12:00:00', '14:00:00', '2022-07-09', 'GBRST5', 'Unfinished'),
('ARGITA', 2022, '20:00:00', '22:00:00', '2022-07-15', 'GBRST1', 'Unfinished'),
('ARGJPN', 2022, '16:00:00', '18:00:00', '2022-07-12', 'GBRST3', 'Unfinished'),
('ARGPRT', 2022, '20:00:00', '22:00:00', '2022-07-06', 'GBRST2', 'Unfinished'),
('BELBRA', 2022, '12:00:00', '14:00:00', '2022-06-26', 'GBRST3', 'Finished'),
('BELESP', 2022, '16:00:00', '18:00:00', '2022-06-29', 'GBRST5', 'Finished'),
('BELFRA', 2022, '20:00:00', '22:00:00', '2022-07-02', 'GBRST3', 'Finished'),
('BELGER', 2022, '12:00:00', '14:00:00', '2022-07-05', 'GBRST1', 'Unfinished'),
('BELHRV', 2022, '20:00:00', '22:00:00', '2022-07-11', 'GBRST2', 'Unfinished'),
('BELITA', 2022, '16:00:00', '18:00:00', '2022-07-17', 'GBRST3', 'Unfinished'),
('BELJPN', 2022, '12:00:00', '14:00:00', '2022-07-14', 'GBRST5', 'Unfinished'),
('BELPRT', 2022, '16:00:00', '18:00:00', '2022-07-08', 'GBRST4', 'Unfinished'),
('BRAESP', 2022, '12:00:00', '14:00:00', '2022-07-01', 'GBRST2', 'Finished'),
('BRAFRA', 2022, '16:00:00', '18:00:00', '2022-07-04', 'GBRST5', 'Unfinished'),
('BRAGER', 2022, '20:00:00', '22:00:00', '2022-07-07', 'GBRST3', 'Unfinished'),
('BRAHRV', 2022, '16:00:00', '18:00:00', '2022-07-13', 'GBRST4', 'Unfinished'),
('BRAITA', 2022, '12:00:00', '14:00:00', '2022-07-19', 'GBRST5', 'Unfinished'),
('BRAJPN', 2022, '20:00:00', '22:00:00', '2022-07-16', 'GBRST2', 'Unfinished'),
('BRAPRT', 2022, '12:00:00', '14:00:00', '2022-07-10', 'GBRST1', 'Unfinished'),
('ESPFRA', 2022, '12:00:00', '14:00:00', '2022-07-06', 'GBRST1', 'Unfinished'),
('ESPGER', 2022, '16:00:00', '18:00:00', '2022-07-09', 'GBRST4', 'Unfinished'),
('ESPHRV', 2022, '12:00:00', '14:00:00', '2022-07-15', 'GBRST5', 'Unfinished'),
('ESPITA', 2022, '20:00:00', '22:00:00', '2022-07-21', 'GBRST2', 'Unfinished'),
('ESPJPN', 2022, '16:00:00', '18:00:00', '2022-07-18', 'GBRST4', 'Unfinished'),
('ESPPRT', 2022, '20:00:00', '22:00:00', '2022-07-12', 'GBRST2', 'Unfinished'),
('FRAGER', 2022, '12:00:00', '14:00:00', '2022-07-11', 'GBRST1', 'Unfinished'),
('FRAHRV', 2022, '20:00:00', '22:00:00', '2022-07-17', 'GBRST2', 'Unfinished'),
('FRAITA', 2022, '16:00:00', '18:00:00', '2022-07-23', 'GBRST3', 'Unfinished'),
('FRAJPN', 2022, '12:00:00', '14:00:00', '2022-07-20', 'GBRST1', 'Unfinished'),
('FRAPRT', 2022, '16:00:00', '18:00:00', '2022-07-14', 'GBRST4', 'Unfinished'),
('GERHRV', 2022, '16:00:00', '18:00:00', '2022-07-19', 'GBRST4', 'Unfinished'),
('GERITA', 2022, '12:00:00', '14:00:00', '2022-07-25', 'GBRST5', 'Unfinished'),
('GERJPN', 2022, '20:00:00', '22:00:00', '2022-07-22', 'GBRST2', 'Unfinished'),
('GERPRT', 2022, '12:00:00', '14:00:00', '2022-07-16', 'GBRST1', 'Unfinished'),
('HRVITA', 2022, '16:00:00', '18:00:00', '2022-07-29', 'GBRST3', 'Unfinished'),
('HRVJPN', 2022, '12:00:00', '14:00:00', '2022-07-26', 'GBRST1', 'Unfinished'),
('JPNITA', 2022, '12:00:00', '14:00:00', '2022-07-31', 'GBRST4', 'Unfinished'),
('PRTHRV', 2022, '12:00:00', '14:00:00', '2022-07-21', 'GBRST3', 'Unfinished'),
('PRTITA', 2022, '20:00:00', '22:00:00', '2022-07-27', 'GBRST2', 'Unfinished'),
('PRTJPN', 2022, '16:00:00', '18:00:00', '2022-07-24', 'GBRST4', 'Unfinished');

DELIMITER $$
CREATE TRIGGER `update_match_result` AFTER UPDATE ON `matches` FOR EACH ROW BEGIN
    DECLARE team1_name VARCHAR(50);
    DECLARE team2_name VARCHAR(50);
    DECLARE team1_goals INT;
    DECLARE team2_goals INT;
    DECLARE match_result VARCHAR(50);
    

    SELECT TeamPlay INTO team1_name
    FROM play_in
    WHERE MatchPlay = NEW.MatchCode
    LIMIT 1;
    
    SELECT TeamPlay INTO team2_name
    FROM play_in
    WHERE MatchPlay = NEW.MatchCode
    LIMIT 1, 1;
    

    SELECT COUNT(g.Goal_Player) INTO team1_goals
    FROM is_played AS ip
    JOIN team_member AS tm ON ip.is_PlayedCode = tm.MemberCode
    JOIN goals AS g ON g.Goal_Player = tm.MemberCode
    WHERE ip.is_MatchCode = NEW.MatchCode AND tm.TM_Team = team1_name;
    

    SELECT COUNT(g.Goal_Player) INTO team2_goals
    FROM is_played AS ip
    JOIN team_member AS tm ON ip.is_PlayedCode = tm.MemberCode
    JOIN goals AS g ON g.Goal_Player = tm.MemberCode
    WHERE ip.is_MatchCode = NEW.MatchCode AND tm.TM_Team = team2_name;
    

    IF (NEW.M_Status = 'Finished') THEN
        IF(team1_goals > team2_goals) THEN
            UPDATE play_in
            SET M_Result = 'Win'
            WHERE MatchPlay = NEW.MatchCode AND TeamPlay = team1_name;
            
            UPDATE play_in
            SET M_Result = 'Lose'
            WHERE MatchPlay = NEW.MatchCode AND TeamPlay = team2_name;
        ELSEIF(team1_goals < team2_goals) THEN
            UPDATE play_in
            SET M_Result = 'Lose'
            WHERE MatchPlay = NEW.MatchCode AND TeamPlay = team1_name;
            
            UPDATE play_in
            SET M_Result = 'Win'
            WHERE MatchPlay = NEW.MatchCode AND TeamPlay = team2_name;
        ELSE
            UPDATE play_in
            SET M_Result = 'Draw'
            WHERE MatchPlay = NEW.MatchCode AND TeamPlay IN (team1_name, team2_name);
        END IF;
    END IF;
    
END
$$
DELIMITER ;


CREATE TABLE `nation` (
  `FFCountryCode` varchar(3) NOT NULL,
  `Continent` varchar(50) NOT NULL,
  `Nname` varchar(50) NOT NULL
);


INSERT INTO `nation` (`FFCountryCode`, `Continent`, `Nname`) VALUES
('ARG', 'South America', 'Argentina'),
('AUS', 'Oceania', 'Australia'),
('BEL', 'Europe', 'Belgium'),
('BRA', 'South America', 'Brazil'),
('CHL', 'South America', 'Chile'),
('DNK', 'Europe', 'Denmark'),
('ESP', 'Europe', 'Spain'),
('FRA', 'Europe', 'France'),
('GBR', 'Europe', 'United Kingdom'),
('GER', 'Europe', 'Germany'),
('HRV', 'Europe', 'Croatia'),
('ITA', 'Europe', 'Italy'),
('JPN', 'Asia', 'Japan'),
('KOR', 'Asia', 'South Korea'),
('NLD', 'Europe', 'Netherlands'),
('PRT', 'Europe', 'Portugal'),
('SAU', 'Asia', 'Saudi Arabia'),
('SWE', 'Europe', 'Sweden'),
('USA', 'North America', 'United States');



CREATE TABLE `participate_in` (
  `P_FFCCode` varchar(3) NOT NULL,
  `P_HYearCode` int(11) NOT NULL
);



INSERT INTO `participate_in` (`P_FFCCode`, `P_HYearCode`) VALUES
('ARG', 2022),
('BEL', 2022),
('BRA', 2022),
('ESP', 2022),
('FRA', 2022),
('GER', 2022),
('HRV', 2022),
('ITA', 2022),
('JPN', 2022),
('PRT', 2022);


CREATE TABLE `player` (
  `PlayerCode` varchar(6) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `Role` varchar(15) NOT NULL,
  `ShirtNum` int(11) NOT NULL
);

INSERT INTO `player` (`PlayerCode`, `Status`, `Role`, `ShirtNum`) VALUES
('ARGDF1', 'Fit', 'Defender', 3),
('ARGDF2', 'Fit', 'Defender', 4),
('ARGDF3', 'Fit', 'Defender', 5),
('ARGDF4', 'Fit', 'Defender', 6),
('ARGFW1', 'Fit', 'Forward', 10),
('ARGFW2', 'Fit', 'Forward', 12),
('ARGFW3', 'Fit', 'Forward', 13),
('ARGFW4', 'Fit', 'Forward', 14),
('ARGGK1', 'Fit', 'Goalkeeper', 1),
('ARGGK2', 'Fit', 'Goalkeeper', 2),
('ARGMF1', 'Fit', 'Midfielder', 7),
('ARGMF2', 'Fit', 'Midfielder', 8),
('ARGMF3', 'Fit', 'Midfielder', 9),
('ARGMF4', 'Fit', 'Midfielder', 11),
('BELDF1', 'Fit', 'Defender', 3),
('BELDF2', 'Fit', 'Defender', 4),
('BELDF3', 'Fit', 'Defender', 5),
('BELDF4', 'Fit', 'Defender', 6),
('BELFW1', 'Fit', 'Forward', 11),
('BELFW2', 'Fit', 'Forward', 12),
('BELFW3', 'Fit', 'Forward', 13),
('BELFW4', 'Fit', 'Forward', 14),
('BELGK1', 'Fit', 'Goalkeeper', 1),
('BELGK2', 'Fit', 'Goalkeeper', 2),
('BELMF1', 'Fit', 'Midfielder', 7),
('BELMF2', 'Fit', 'Midfielder', 8),
('BELMF3', 'Fit', 'Midfielder', 9),
('BELMF4', 'Fit', 'Midfielder', 10),
('BRADF1', 'Fit', 'Defender', 3),
('BRADF2', 'Fit', 'Defender', 4),
('BRADF3', 'Fit', 'Defender', 5),
('BRADF4', 'Fit', 'Defender', 6),
('BRAFW1', 'Fit', 'Forward', 11),
('BRAFW2', 'Fit', 'Forward', 12),
('BRAFW3', 'Fit', 'Forward', 13),
('BRAFW4', 'Fit', 'Forward', 14),
('BRAGK1', 'Fit', 'Goalkeeper', 1),
('BRAGK2', 'Fit', 'Goalkeeper', 2),
('BRAMF1', 'Fit', 'Midfielder', 7),
('BRAMF2', 'Fit', 'Midfielder', 8),
('BRAMF3', 'Fit', 'Midfielder', 9),
('BRAMF4', 'Fit', 'Midfielder', 10),
('ESPDF1', 'Fit', 'Defender', 3),
('ESPDF2', 'Fit', 'Defender', 4),
('ESPDF3', 'Fit', 'Defender', 5),
('ESPDF4', 'Fit', 'Defender', 6),
('ESPFW1', 'Fit', 'Forward', 11),
('ESPFW2', 'Fit', 'Forward', 12),
('ESPFW3', 'Fit', 'Forward', 13),
('ESPFW4', 'Fit', 'Forward', 14),
('ESPGK1', 'Fit', 'Goalkeeper', 1),
('ESPGK2', 'Fit', 'Goalkeeper', 2),
('ESPMF1', 'Fit', 'Midfielder', 7),
('ESPMF2', 'Fit', 'Midfielder', 8),
('ESPMF3', 'Fit', 'Midfielder', 9),
('ESPMF4', 'Fit', 'Midfielder', 10),
('FRADF1', 'Fit', 'Defender', 3),
('FRADF2', 'Fit', 'Defender', 4),
('FRADF3', 'Fit', 'Defender', 5),
('FRADF4', 'Fit', 'Defender', 6),
('FRAFW1', 'Fit', 'Forward', 11),
('FRAFW2', 'Fit', 'Forward', 12),
('FRAFW3', 'Fit', 'Forward', 13),
('FRAFW4', 'Fit', 'Forward', 14),
('FRAGK1', 'Fit', 'Goalkeeper', 1),
('FRAGK2', 'Fit', 'Goalkeeper', 2),
('FRAMF1', 'Fit', 'Midfielder', 7),
('FRAMF2', 'Fit', 'Midfielder', 8),
('FRAMF3', 'Fit', 'Midfielder', 9),
('FRAMF4', 'Fit', 'Midfielder', 10),
('GERDF1', 'Fit', 'Defender', 3),
('GERDF2', 'Fit', 'Defender', 4),
('GERDF3', 'Fit', 'Defender', 5),
('GERDF4', 'Fit', 'Defender', 6),
('GERFW1', 'Fit', 'Forward', 11),
('GERFW2', 'Fit', 'Forward', 12),
('GERFW3', 'Fit', 'Forward', 13),
('GERFW4', 'Fit', 'Forward', 14),
('GERGK1', 'Fit', 'Goalkeeper', 1),
('GERGK2', 'Fit', 'Goalkeeper', 2),
('GERMF1', 'Fit', 'Midfielder', 7),
('GERMF2', 'Fit', 'Midfielder', 8),
('GERMF3', 'Fit', 'Midfielder', 9),
('GERMF4', 'Fit', 'Midfielder', 10),
('HRVDF1', 'Fit', 'Defender', 3),
('HRVDF2', 'Fit', 'Defender', 4),
('HRVDF3', 'Fit', 'Defender', 5),
('HRVDF4', 'Fit', 'Defender', 6),
('HRVFW1', 'Fit', 'Forward', 11),
('HRVFW2', 'Fit', 'Forward', 12),
('HRVFW3', 'Fit', 'Forward', 13),
('HRVFW4', 'Fit', 'Forward', 14),
('HRVGK1', 'Fit', 'Goalkeeper', 1),
('HRVGK2', 'Fit', 'Goalkeeper', 2),
('HRVMF1', 'Fit', 'Midfielder', 7),
('HRVMF2', 'Fit', 'Midfielder', 8),
('HRVMF3', 'Fit', 'Midfielder', 9),
('HRVMF4', 'Fit', 'Midfielder', 10),
('ITADF1', 'Fit', 'Defender', 3),
('ITADF2', 'Fit', 'Defender', 4),
('ITADF3', 'Fit', 'Defender', 5),
('ITADF4', 'Fit', 'Defender', 6),
('ITAFW1', 'Fit', 'Forward', 11),
('ITAFW2', 'Fit', 'Forward', 12),
('ITAFW3', 'Fit', 'Forward', 13),
('ITAFW4', 'Fit', 'Forward', 14),
('ITAGK1', 'Fit', 'Goalkeeper', 1),
('ITAGK2', 'Fit', 'Goalkeeper', 2),
('ITAMF1', 'Fit', 'Midfielder', 7),
('ITAMF2', 'Fit', 'Midfielder', 8),
('ITAMF3', 'Fit', 'Midfielder', 9),
('ITAMF4', 'Fit', 'Midfielder', 10),
('JPNDF1', 'Fit', 'Defender', 3),
('JPNDF2', 'Fit', 'Defender', 4),
('JPNDF3', 'Fit', 'Defender', 5),
('JPNDF4', 'Fit', 'Defender', 6),
('JPNFW1', 'Fit', 'Forward', 11),
('JPNFW2', 'Fit', 'Forward', 12),
('JPNFW3', 'Fit', 'Forward', 13),
('JPNFW4', 'Fit', 'Forward', 14),
('JPNGK1', 'Fit', 'Goalkeeper', 1),
('JPNGK2', 'Fit', 'Goalkeeper', 2),
('JPNMF1', 'Fit', 'Midfielder', 7),
('JPNMF2', 'Fit', 'Midfielder', 8),
('JPNMF3', 'Fit', 'Midfielder', 9),
('JPNMF4', 'Fit', 'Midfielder', 10),
('PRTDF1', 'Fit', 'Defender', 3),
('PRTDF2', 'Fit', 'Defender', 4),
('PRTDF3', 'Fit', 'Defender', 5),
('PRTDF4', 'Fit', 'Defender', 6),
('PRTFW1', 'Fit', 'Forward', 11),
('PRTFW2', 'Fit', 'Forward', 12),
('PRTFW3', 'Fit', 'Forward', 13),
('PRTFW4', 'Fit', 'Forward', 14),
('PRTGK1', 'Fit', 'Goalkeeper', 1),
('PRTGK2', 'Fit', 'Goalkeeper', 2),
('PRTMF1', 'Fit', 'Midfielder', 7),
('PRTMF2', 'Fit', 'Midfielder', 8),
('PRTMF3', 'Fit', 'Midfielder', 9),
('PRTMF4', 'Fit', 'Midfielder', 10);



CREATE TABLE `play_in` (
  `TeamPlay` varchar(20) NOT NULL,
  `MatchPlay` varchar(6) NOT NULL,
  `HYearPlay` int(11) NOT NULL,
  `M_Result` varchar(20) DEFAULT NULL
) ;


INSERT INTO `play_in` (`TeamPlay`, `MatchPlay`, `HYearPlay`, `M_Result`) VALUES
('Argentina22', 'ARGBEL', 2022, 'Win'),
('Belgium22', 'ARGBEL', 2022, 'Lose');


CREATE TABLE `referee` (
  `RefID` varchar(6) NOT NULL,
  `FName` varchar(15) NOT NULL,
  `LName` varchar(15) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `NationName` varchar(50) DEFAULT NULL,
  `Position` varchar(25) DEFAULT NULL
) ;


INSERT INTO `referee` (`RefID`, `FName`, `LName`, `Age`, `Gender`, `NationName`, `Position`) VALUES
('REFE11', 'David', 'Williams', 38, 'M', 'England', 'Main Referee'),
('REFE12', 'Daniel', 'Brown', 40, 'M', 'Germany', 'Main Referee'),
('REFE13', 'Christopher', 'Miller', 36, 'M', 'France', 'Main Referee'),
('REFE14', 'Matthew', 'Jones', 42, 'M', 'Spain', 'Main Referee'),
('REFE15', 'Andrew', 'Davis', 37, 'M', 'Italy', 'Main Referee'),
('REFE16', 'Joseph', 'Anderson', 41, 'M', 'Brazil', 'Assistant Referee'),
('REFE17', 'James', 'Taylor', 39, 'M', 'Argentina', 'Assistant Referee'),
('REFE18', 'Richard', 'Jackson', 35, 'M', 'Netherlands', 'Assistant Referee'),
('REFE19', 'Brian', 'White', 44, 'M', 'Portugal', 'Assistant Referee'),
('REFE20', 'Thomas', 'Martinez', 36, 'M', 'Australia', 'Assistant Referee'),
('REFE21', 'Emma', 'Garcia', 32, 'F', 'United States', 'Var Referee'),
('REFE22', 'Olivia', 'Smith', 30, 'F', 'Canada', 'Var Referee'),
('REFE23', 'Aiden', 'Johnson', 34, 'M', 'Germany', 'Var Referee'),
('REFE24', 'Aiden', 'Jack', 34, 'M', 'Germany', 'Var Referee'),
('REFE25', 'Sophia', 'Brown', 31, 'F', 'France', 'Var Referee');


CREATE TABLE `season` (
  `HostYearCode` int(11) NOT NULL,
  `OpenDate` date NOT NULL,
  `CloseDate` date NOT NULL,
  `No_Team` int(11) NOT NULL,
  `S_FFCCode` varchar(3) NOT NULL
) ;


INSERT INTO `season` (`HostYearCode`, `OpenDate`, `CloseDate`, `No_Team`, `S_FFCCode`) VALUES
(2022, '2022-06-20', '2022-08-03', 10, 'GBR');

CREATE TABLE `season_team` (
  `TeamName` varchar(20) NOT NULL,
  `T_FFCCode` varchar(3) NOT NULL
) ;


INSERT INTO `season_team` (`TeamName`, `T_FFCCode`) VALUES
('Argentina22', 'ARG'),
('Belgium22', 'BEL'),
('Brazil22', 'BRA'),
('Spain22', 'ESP'),
('France22', 'FRA'),
('Germany22', 'GER'),
('Croatia22', 'HRV'),
('Italia22', 'ITA'),
('Japan22', 'JPN'),
('Portugal22', 'PRT');



CREATE TABLE `sponsor` (
  `SpsName` varchar(15) NOT NULL,
  `SpsType` varchar(255) DEFAULT NULL
) ;


INSERT INTO `sponsor` (`SpsName`, `SpsType`) VALUES
('Adidas', 'Sportswear'),
('Apple', 'Technology'),
('Audi', 'Automobile'),
('Ford', 'Automobile'),
('Honda', 'Automobile'),
('IBM', 'Technology'),
('Microsoft', 'Technology'),
('Nike', 'Sportswear'),
('Panasonic', 'Electronics'),
('Samsung', 'Technology'),
('Sony', 'Electronics'),
('Toyota', 'Automobile');



CREATE TABLE `sposor_for` (
  `SF_Name` varchar(15) NOT NULL,
  `SF_Team` varchar(20) NOT NULL,
  `Finance` decimal(15,2) NOT NULL
) ;



INSERT INTO `sposor_for` (`SF_Name`, `SF_Team`, `Finance`) VALUES
('Adidas', 'Croatia22', 1500000.00),
('Adidas', 'Japan22', 1500000.00),
('Apple', 'Argentina22', 2000000.00),
('Apple', 'Croatia22', 2000000.00),
('Apple', 'Portugal22', 2000000.00),
('Audi', 'France22', 1100000.00),
('Audi', 'Portugal22', 1100000.00),
('Ford', 'Spain22', 1100000.00),
('Honda', 'Japan22', 1100000.00),
('Honda', 'Portugal22', 1100000.00),
('IBM', 'Belgium22', 2000000.00),
('IBM', 'France22', 2000000.00),
('Microsoft', 'Brazil22', 2000000.00),
('Nike', 'Germany22', 1600000.00),
('Nike', 'Italia22', 1600000.00),
('Panasonic', 'Croatia22', 1100000.00),
('Samsung', 'Brazil22', 1500000.00),
('Samsung', 'Spain22', 1500000.00),
('Sony', 'Argentina22', 1300000.00),
('Toyota', 'Germany22', 1100000.00);



CREATE TABLE `stadium` (
  `StadiumCode` varchar(6) NOT NULL,
  `SName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL
);


INSERT INTO `stadium` (`StadiumCode`, `SName`, `Address`) VALUES
('GBRST1', 'Old Trafford', 'Sir Matt Busby Way, Old Trafford Manchester'),
('GBRST2', 'Wembley Stadium', 'Wembley London'),
('GBRST3', 'Anfield', 'Anfield Road Liverpool'),
('GBRST4', 'Emirates Stadium', '75 Drayton Park London'),
('GBRST5', 'Etihad Stadium', 'Etihad Campus Manchester');


CREATE TABLE `staff` (
  `StaffCode` varchar(6) NOT NULL,
  `Position` varchar(30) DEFAULT NULL
) ;


INSERT INTO `staff` (`StaffCode`, `Position`) VALUES
('ARGST1', 'Physiotherapist'),
('ARGST2', 'Security'),
('ARGST3', 'Doctor'),
('BELST1', 'Physiotherapist'),
('BELST2', 'Security'),
('BELST3', 'Doctor'),
('BRAST1', 'Physiotherapist'),
('BRAST2', 'Security'),
('BRAST3', 'Doctor'),
('ESPST1', 'Physiotherapist'),
('ESPST2', 'Security'),
('ESPST3', 'Doctor'),
('FRAST1', 'Physiotherapist'),
('FRAST2', 'Security'),
('FRAST3', 'Doctor'),
('GERST1', 'Physiotherapist'),
('GERST2', 'Security'),
('GERST3', 'Doctor'),
('HRVST1', 'Physiotherapist'),
('HRVST2', 'Security'),
('HRVST3', 'Doctor'),
('ITAST1', 'Physiotherapist'),
('ITAST2', 'Security'),
('ITAST3', 'Doctor'),
('JPNST1', 'Physiotherapist'),
('JPNST2', 'Security'),
('JPNST3', 'Doctor'),
('PRTST1', 'Physiotherapist'),
('PRTST2', 'Security'),
('PRTST3', 'Doctor');



CREATE TABLE `team_member` (
  `MemberCode` varchar(6) NOT NULL,
  `FName` varchar(15) NOT NULL,
  `Minit` varchar(15) DEFAULT NULL,
  `LName` varchar(15) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` char(1) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `TM_Team` varchar(20) NOT NULL
) ;


INSERT INTO `team_member` (`MemberCode`, `FName`, `Minit`, `LName`, `Age`, `Gender`, `Nationality`, `TM_Team`) VALUES
('ARGCO1', 'Lionel', NULL, 'Scaloni', 45, 'M', 'ARGENTINA', 'Argentina22'),
('ARGCO2', 'Sergio', 'Kun', 'Aguero', 38, 'M', 'ARGENTINA', 'Argentina22'),
('ARGDF1', 'Juan', NULL, 'Foyth', 23, 'M', 'ARGENTINA', 'Argentina22'),
('ARGDF2', 'Nicolas', NULL, 'Tagliafico', 26, 'M', 'ARGENTINA', 'Argentina22'),
('ARGDF3', 'Gonzalo', NULL, 'Motiel', 22, 'M', 'ARGENTINA', 'Argentina22'),
('ARGDF4', 'Marcos', NULL, 'Acuna', 26, 'M', 'ARGENTINA', 'Argentina22'),
('ARGFW1', 'Lionel', NULL, 'Messi', 34, 'M', 'ARGENTINA', 'Argentina22'),
('ARGFW2', 'Angel', 'Di', 'Maria', 30, 'M', 'ARGENTINA', 'Argentina22'),
('ARGFW3', 'Lautaro', NULL, 'Martinez', 25, 'M', 'ARGENTINA', 'Argentina22'),
('ARGFW4', 'Enzo', NULL, 'Fernandez', 22, 'M', 'ARGENTINA', 'Argentina22'),
('ARGGK1', 'Emilano', NULL, 'Martinez', 24, 'M', 'ARGENTINA', 'Argentina22'),
('ARGGK2', 'Franco', NULL, 'Armani', 25, 'M', 'ARGENTINA', 'Argentina22'),
('ARGMF1', 'Rodrigo', 'De', 'Paul', 23, 'M', 'ARGENTINA', 'Argentina22'),
('ARGMF2', 'Guido', NULL, 'Rodriguez', 22, 'M', 'ARGENTINA', 'Argentina22'),
('ARGMF3', 'Alexis', 'Mac', 'Allister', 25, 'M', 'ARGENTINA', 'Argentina22'),
('ARGMF4', 'Julian', NULL, 'Anvarez', 20, 'M', 'ARGENTINA', 'Argentina22'),
('ARGST1', 'John', 'Swith', 'Doe', 25, 'F', 'ARGENTINA', 'Argentina22'),
('ARGST2', 'Ide', 'Peter', 'Ceach', 40, 'M', 'ARGENTINA', 'Argentina22'),
('ARGST3', 'John', 'Cap', 'Doer', 56, 'M', 'ARGENTINA', 'Argentina22'),
('BELCO1', 'Caroline', 'O', 'Dumont', 28, 'M', 'BELGIUM', 'Belgium22'),
('BELCO2', 'Paul', 'P', 'Jacobs', 29, 'M', 'BELGIUM', 'Belgium22'),
('BELDF1', 'Marie', 'C', 'Moreau', 26, 'M', 'BELGIUM', 'Belgium22'),
('BELDF2', 'Pierre', 'D', 'Bertrand', 25, 'M', 'BELGIUM', 'Belgium22'),
('BELDF3', 'Sophie', 'E', 'Lambert', 24, 'M', 'BELGIUM', 'Belgium22'),
('BELDF4', 'Philippe', 'F', 'Dupont', 26, 'M', 'BELGIUM', 'Belgium22'),
('BELFW1', 'Elise', 'K', 'Bosmans', 24, 'M', 'BELGIUM', 'Belgium22'),
('BELFW2', 'Thierry', 'L', 'Willems', 27, 'M', 'BELGIUM', 'Belgium22'),
('BELFW3', 'Sylvie', 'M', 'Declercq', 25, 'M', 'BELGIUM', 'Belgium22'),
('BELFW4', 'Vincent', 'N', 'Vermeulen', 26, 'M', 'BELGIUM', 'Belgium22'),
('BELGK1', 'Jean', 'A', 'Dubois', 28, 'M', 'BELGIUM', 'Belgium22'),
('BELGK2', 'Jacques', 'B', 'Lefevre', 27, 'M', 'BELGIUM', 'Belgium22'),
('BELMF1', 'Isabelle', 'G', 'Martens', 27, 'M', 'BELGIUM', 'Belgium22'),
('BELMF2', 'Francois', 'H', 'Leclerc', 28, 'M', 'BELGIUM', 'Belgium22'),
('BELMF3', 'Catherine', 'I', 'Vandenberg', 25, 'M', 'BELGIUM', 'Belgium22'),
('BELMF4', 'Luc', 'J', 'De Smet', 26, 'M', 'BELGIUM', 'Belgium22'),
('BELST1', 'Martine', 'Q', 'Dubois', 26, 'F', 'BELGIUM', 'Belgium22'),
('BELST2', 'Michel', 'R', 'Lefevre', 27, 'M', 'BELGIUM', 'Belgium22'),
('BELST3', 'Lea', 'S', 'Moreau', 25, 'F', 'BELGIUM', 'Belgium22'),
('BRACO1', 'Gustavo', 'O', 'Carvalho', 28, 'M', 'BRAZIL', 'Brazil22'),
('BRACO2', 'Camila', 'P', 'Silveira', 29, 'F', 'BRAZIL', 'Brazil22'),
('BRADF1', 'Carlos', 'C', 'Oliveira', 27, 'M', 'BRAZIL', 'Brazil22'),
('BRADF2', 'Lucas', 'D', 'Ribeiro', 24, 'M', 'BRAZIL', 'Brazil22'),
('BRADF3', 'Matheus', 'E', 'Pereira', 26, 'M', 'BRAZIL', 'Brazil22'),
('BRADF4', 'Fernanda', 'F', 'Costa', 25, 'F', 'BRAZIL', 'Brazil22'),
('BRAFW1', 'Rafael', 'K', 'Souza', 24, 'M', 'BRAZIL', 'Brazil22'),
('BRAFW2', 'Ana', 'L', 'Oliveira', 25, 'F', 'BRAZIL', 'Brazil22'),
('BRAFW3', 'Lucas', 'M', 'Ferreira', 26, 'M', 'BRAZIL', 'Brazil22'),
('BRAFW4', 'Mariana', 'N', 'Almeida', 27, 'F', 'BRAZIL', 'Brazil22'),
('BRAGK1', 'Joao', 'A', 'Silva', 25, 'M', 'BRAZIL', 'Brazil22'),
('BRAGK2', 'Jose', 'B', 'Santos', 26, 'M', 'BRAZIL', 'Brazil22'),
('BRAMF1', 'Gabriel', 'G', 'Lima', 28, 'M', 'BRAZIL', 'Brazil22'),
('BRAMF2', 'Isabella', 'H', 'Fernandes', 25, 'F', 'BRAZIL', 'Brazil22'),
('BRAMF3', 'Matheus', 'I', 'Martins', 26, 'M', 'BRAZIL', 'Brazil22'),
('BRAMF4', 'Juliana', 'J', 'Rodrigues', 27, 'F', 'BRAZIL', 'Brazil22'),
('BRAST1', 'Bruno', 'Q', 'Santana', 26, 'M', 'BRAZIL', 'Brazil22'),
('BRAST2', 'Aline', 'R', 'Nascimento', 27, 'F', 'BRAZIL', 'Brazil22'),
('BRAST3', 'Diego', 'S', 'Cruz', 25, 'M', 'BRAZIL', 'Brazil22'),
('ESPCO1', 'Alberto', 'O', 'Vega', 28, 'M', 'SPAIN', 'Spain22'),
('ESPCO2', 'Miguel', 'P', 'Jimenez', 29, 'M', 'SPAIN', 'Spain22'),
('ESPDF1', 'Carlos', 'C', 'Fernandez', 27, 'M', 'SPAIN', 'Spain22'),
('ESPDF2', 'Luis', 'D', 'Lopez', 24, 'M', 'SPAIN', 'Spain22'),
('ESPDF3', 'Manuel', 'E', 'Martinez', 26, 'M', 'SPAIN', 'Spain22'),
('ESPDF4', 'Francisco', 'F', 'Garcia', 25, 'M', 'SPAIN', 'Spain22'),
('ESPFW1', 'Pablo', 'K', 'Ruiz', 24, 'M', 'SPAIN', 'Spain22'),
('ESPFW2', 'Sergio', 'L', 'Hernandez', 25, 'M', 'SPAIN', 'Spain22'),
('ESPFW3', 'Eduardo', 'M', 'Diaz', 26, 'M', 'SPAIN', 'Spain22'),
('ESPFW4', 'Raul', 'N', 'Torres', 27, 'M', 'SPAIN', 'Spain22'),
('ESPGK1', 'Juan', 'A', 'Gomez', 25, 'M', 'SPAIN', 'Spain22'),
('ESPGK2', 'Javier', 'B', 'Rodriguez', 26, 'M', 'SPAIN', 'Spain22'),
('ESPMF1', 'Gabriel', 'G', 'Sanchez', 28, 'M', 'SPAIN', 'Spain22'),
('ESPMF2', 'David', 'H', 'Perez', 25, 'M', 'SPAIN', 'Spain22'),
('ESPMF3', 'Jose', 'I', 'Gonzalez', 26, 'M', 'SPAIN', 'Spain22'),
('ESPMF4', 'Antonio', 'J', 'Ramirez', 27, 'M', 'SPAIN', 'Spain22'),
('ESPST1', 'Victor', 'Q', 'Navarro', 26, 'M', 'SPAIN', 'Spain22'),
('ESPST2', 'Cristina', 'R', 'Romero', 27, 'F', 'SPAIN', 'Spain22'),
('ESPST3', 'Jorge', 'S', 'Gutierrez', 25, 'M', 'SPAIN', 'Spain22'),
('FRACO1', 'Lucien', 'O', 'Olivier', 28, 'M', 'FRANCE', 'France22'),
('FRACO2', 'Marcel', 'P', 'Perrin', 29, 'M', 'FRANCE', 'France22'),
('FRADF1', 'François', 'C', 'Moreau', 27, 'M', 'FRANCE', 'France22'),
('FRADF2', 'Michel', 'D', 'Leclerc', 24, 'M', 'FRANCE', 'France22'),
('FRADF3', 'Philippe', 'E', 'Dupont', 26, 'M', 'FRANCE', 'France22'),
('FRADF4', 'Sylvain', 'F', 'Martel', 25, 'M', 'FRANCE', 'France22'),
('FRAFW1', 'Gérard', 'K', 'Beaumont', 24, 'M', 'FRANCE', 'France22'),
('FRAFW2', 'Hubert', 'L', 'Leroux', 25, 'M', 'FRANCE', 'France22'),
('FRAFW3', 'Isidore', 'M', 'Marchand', 26, 'M', 'FRANCE', 'France22'),
('FRAFW4', 'Jacques', 'N', 'Noël', 27, 'M', 'FRANCE', 'France22'),
('FRAGK1', 'Jean', 'A', 'Dubois', 25, 'M', 'FRANCE', 'France22'),
('FRAGK2', 'Pierre', 'B', 'Lefevre', 26, 'M', 'FRANCE', 'France22'),
('FRAMF1', 'Antoine', 'G', 'Benoit', 28, 'M', 'FRANCE', 'France22'),
('FRAMF2', 'Claude', 'H', 'Girard', 25, 'M', 'FRANCE', 'France22'),
('FRAMF3', 'Dominique', 'I', 'Roux', 26, 'M', 'FRANCE', 'France22'),
('FRAMF4', 'Emmanuel', 'J', 'Lemoine', 27, 'M', 'FRANCE', 'France22'),
('FRAST1', 'Nathalie', 'Q', 'Quentin', 26, 'F', 'FRANCE', 'France22'),
('FRAST2', 'Olivier', 'R', 'Rousseau', 27, 'M', 'FRANCE', 'France22'),
('FRAST3', 'Pierre', 'S', 'Simon', 25, 'M', 'FRANCE', 'France22'),
('GERCO1', 'Peter', 'O', 'Krause', 28, 'M', 'GERMANY', 'Germany22'),
('GERCO2', 'Thomas', 'P', 'Schulz', 29, 'M', 'GERMANY', 'Germany22'),
('GERDF1', 'Wolfgang', 'C', 'Schmidt', 27, 'M', 'GERMANY', 'Germany22'),
('GERDF2', 'Klaus', 'D', 'Becker', 24, 'M', 'GERMANY', 'Germany22'),
('GERDF3', 'Andreas', 'E', 'Koch', 26, 'M', 'GERMANY', 'Germany22'),
('GERDF4', 'Dieter', 'F', 'Fischer', 25, 'M', 'GERMANY', 'Germany22'),
('GERFW1', 'Franz', 'K', 'Zimmermann', 24, 'M', 'GERMANY', 'Germany22'),
('GERFW2', 'Hans', 'L', 'Hartmann', 25, 'M', 'GERMANY', 'Germany22'),
('GERFW3', 'Erich', 'M', 'Werner', 26, 'M', 'GERMANY', 'Germany22'),
('GERFW4', 'Karl', 'N', 'Lange', 27, 'M', 'GERMANY', 'Germany22'),
('GERGK1', 'Johann', 'A', 'Schneider', 25, 'M', 'GERMANY', 'Germany22'),
('GERGK2', 'Heinrich', 'B', 'Muller', 26, 'M', 'GERMANY', 'Germany22'),
('GERMF1', 'Helmut', 'G', 'Hoffmann', 28, 'M', 'GERMANY', 'Germany22'),
('GERMF2', 'Jurgen', 'H', 'Wagner', 25, 'M', 'GERMANY', 'Germany22'),
('GERMF3', 'Ulrich', 'I', 'Bauer', 26, 'M', 'GERMANY', 'Germany22'),
('GERMF4', 'Gunter', 'J', 'Schultz', 27, 'M', 'GERMANY', 'Germany22'),
('GERST1', 'Rudolf', 'Q', 'Lehmann', 26, 'M', 'GERMANY', 'Germany22'),
('GERST2', 'Eva', 'R', 'Hess', 27, 'F', 'GERMANY', 'Germany22'),
('GERST3', 'Gunther', 'S', 'Fischer', 25, 'M', 'GERMANY', 'Germany22'),
('HRVCO1', 'Josip', 'O', 'Orsic', 28, 'M', 'CROATIA', 'Croatia22'),
('HRVCO2', 'Igor', 'P', 'Petrovic', 29, 'M', 'CROATIA', 'Croatia22'),
('HRVDF1', 'Marko', 'C', 'Ivanovic', 27, 'M', 'CROATIA', 'Croatia22'),
('HRVDF2', 'Ante', 'D', 'Horvat', 24, 'M', 'CROATIA', 'Croatia22'),
('HRVDF3', 'Igor', 'E', 'Kralj', 26, 'M', 'CROATIA', 'Croatia22'),
('HRVDF4', 'Nikola', 'F', 'Pavelic', 25, 'M', 'CROATIA', 'Croatia22'),
('HRVFW1', 'Zoran', 'K', 'Zivkovic', 24, 'M', 'CROATIA', 'Croatia22'),
('HRVFW2', 'Davor', 'L', 'Lukic', 25, 'M', 'CROATIA', 'Croatia22'),
('HRVFW3', 'Mladen', 'M', 'Maric', 26, 'M', 'CROATIA', 'Croatia22'),
('HRVFW4', 'Ilija', 'N', 'Novak', 27, 'M', 'CROATIA', 'Croatia22'),
('HRVGK1', 'Ivan', 'A', 'Kovacic', 25, 'M', 'CROATIA', 'Croatia22'),
('HRVGK2', 'Mateo', 'B', 'Babic', 26, 'M', 'CROATIA', 'Croatia22'),
('HRVMF1', 'Ivica', 'G', 'Vukovic', 28, 'M', 'CROATIA', 'Croatia22'),
('HRVMF2', 'Stjepan', 'H', 'Radic', 25, 'M', 'CROATIA', 'Croatia22'),
('HRVMF3', 'Tomislav', 'I', 'Matic', 26, 'M', 'CROATIA', 'Croatia22'),
('HRVMF4', 'Branimir', 'J', 'Jakovljevic', 27, 'M', 'CROATIA', 'Croatia22'),
('HRVST1', 'Luka', 'Q', 'Rukavina', 26, 'M', 'CROATIA', 'Croatia22'),
('HRVST2', 'Ivana', 'R', 'Radic', 27, 'F', 'CROATIA', 'Croatia22'),
('HRVST3', 'Matej', 'S', 'Savic', 25, 'M', 'CROATIA', 'Croatia22'),
('ITACO1', 'Enrico', 'O', 'Bianchi', 28, 'M', 'ITALY', 'Italia22'),
('ITACO2', 'Claudio', 'P', 'Rizzo', 29, 'M', 'ITALY', 'Italia22'),
('ITADF1', 'Francesco', 'C', 'Marini', 27, 'M', 'ITALY', 'Italia22'),
('ITADF2', 'Luca', 'D', 'Ricci', 24, 'M', 'ITALY', 'Italia22'),
('ITADF3', 'Marco', 'E', 'Galli', 26, 'M', 'ITALY', 'Italia22'),
('ITADF4', 'Simone', 'F', 'Moretti', 25, 'M', 'ITALY', 'Italia22'),
('ITAFW1', 'Roberto', 'K', 'Mancini', 24, 'M', 'ITALY', 'Italia22'),
('ITAFW2', 'Gianluca', 'L', 'Pagano', 25, 'M', 'ITALY', 'Italia22'),
('ITAFW3', 'Antonio', 'M', 'De Luca', 26, 'M', 'ITALY', 'Italia22'),
('ITAFW4', 'Fabio', 'N', 'Vitale', 27, 'M', 'ITALY', 'Italia22'),
('ITAGK1', 'Giovanni', 'A', 'Rossi', 25, 'M', 'ITALY', 'Italia22'),
('ITAGK2', 'Alessandro', 'B', 'Conti', 26, 'M', 'ITALY', 'Italia22'),
('ITAMF1', 'Lorenzo', 'G', 'Ferrari', 28, 'M', 'ITALY', 'Italia22'),
('ITAMF2', 'Davide', 'H', 'Barone', 25, 'M', 'ITALY', 'Italia22'),
('ITAMF3', 'Matteo', 'I', 'Rinaldi', 26, 'M', 'ITALY', 'Italia22'),
('ITAMF4', 'Alessio', 'J', 'Lombardi', 27, 'M', 'ITALY', 'Italia22'),
('ITAST1', 'Giuseppe', 'Q', 'Romano', 26, 'M', 'ITALY', 'Italia22'),
('ITAST2', 'Paolo', 'R', 'Mazza', 27, 'M', 'ITALY', 'Italia22'),
('ITAST3', 'Alberto', 'S', 'Fabbri', 25, 'M', 'ITALY', 'Italia22'),
('JPNCO1', 'Tatsuya', 'O', 'Tamura', 28, 'M', 'JAPAN', 'Japan22'),
('JPNCO2', 'Kazuya', 'P', 'Nagasaki', 29, 'M', 'JAPAN', 'Japan22'),
('JPNDF1', 'Kazuki', 'C', 'Tanaka', 27, 'M', 'JAPAN', 'Japan22'),
('JPNDF2', 'Yusuke', 'D', 'Watanabe', 24, 'M', 'JAPAN', 'Japan22'),
('JPNDF3', 'Kenta', 'E', 'Ito', 26, 'M', 'JAPAN', 'Japan22'),
('JPNDF4', 'Ryota', 'F', 'Nakamura', 25, 'M', 'JAPAN', 'Japan22'),
('JPNFW1', 'Yuki', 'K', 'Yamamoto', 24, 'M', 'JAPAN', 'Japan22'),
('JPNFW2', 'Hiroki', 'L', 'Abe', 25, 'M', 'JAPAN', 'Japan22'),
('JPNFW3', 'Naoki', 'M', 'Ishikawa', 26, 'M', 'JAPAN', 'Japan22'),
('JPNFW4', 'Shinji', 'N', 'Kato', 27, 'M', 'JAPAN', 'Japan22'),
('JPNGK1', 'Hiroshi', 'A', 'Suzuki', 25, 'M', 'JAPAN', 'Japan22'),
('JPNGK2', 'Takashi', 'B', 'Yamada', 26, 'M', 'JAPAN', 'Japan22'),
('JPNMF1', 'Takahiro', 'G', 'Kobayashi', 28, 'M', 'JAPAN', 'Japan22'),
('JPNMF2', 'Keisuke', 'H', 'Sato', 25, 'M', 'JAPAN', 'Japan22'),
('JPNMF3', 'Shota', 'I', 'Suzuki', 26, 'M', 'JAPAN', 'Japan22'),
('JPNMF4', 'Masashi', 'J', 'Takahashi', 27, 'M', 'JAPAN', 'Japan22'),
('JPNST1', 'Ken', 'Q', 'Ogawa', 26, 'M', 'JAPAN', 'Japan22'),
('JPNST2', 'Yuka', 'R', 'Saito', 27, 'F', 'JAPAN', 'Japan22'),
('JPNST3', 'Takumi', 'S', 'Ito', 25, 'M', 'JAPAN', 'Japan22'),
('PRTCO1', 'Jose', 'O', 'Oliveira', 28, 'M', 'PORTUGAL', 'Portugal22'),
('PRTCO2', 'Miguel', 'P', 'Pinto', 29, 'M', 'PORTUGAL', 'Portugal22'),
('PRTDF1', 'Antonio', 'C', 'Martins', 27, 'M', 'PORTUGAL', 'Portugal22'),
('PRTDF2', 'Paulo', 'D', 'Fernandes', 24, 'M', 'PORTUGAL', 'Portugal22'),
('PRTDF3', 'Luis', 'E', 'Oliveira', 26, 'M', 'PORTUGAL', 'Portugal22'),
('PRTDF4', 'Carlos', 'F', 'Pereira', 25, 'M', 'PORTUGAL', 'Portugal22'),
('PRTFW1', 'Cristiano', 'C', 'Ronado', 37, 'M', 'PORTUGAL', 'Portugal22'),
('PRTFW2', 'Nuno', 'L', 'Lopes', 25, 'M', 'PORTUGAL', 'Portugal22'),
('PRTFW3', 'Pedro', 'M', 'Mendes', 26, 'M', 'PORTUGAL', 'Portugal22'),
('PRTFW4', 'Hugo', 'N', 'Neves', 27, 'M', 'PORTUGAL', 'Portugal22'),
('PRTGK1', 'Joao', 'A', 'Silva', 25, 'M', 'PORTUGAL', 'Portugal22'),
('PRTGK2', 'Manuel', 'B', 'Santos', 26, 'M', 'PORTUGAL', 'Portugal22'),
('PRTMF1', 'Fernando', 'G', 'Ribeiro', 28, 'M', 'PORTUGAL', 'Portugal22'),
('PRTMF2', 'Rui', 'H', 'Goncalves', 25, 'M', 'PORTUGAL', 'Portugal22'),
('PRTMF3', 'Jorge', 'I', 'Rodrigues', 26, 'M', 'PORTUGAL', 'Portugal22'),
('PRTMF4', 'Eduardo', 'J', 'Sousa', 27, 'M', 'PORTUGAL', 'Portugal22'),
('PRTST1', 'Antonio', 'Q', 'Ramos', 26, 'M', 'PORTUGAL', 'Portugal22'),
('PRTST2', 'Luis', 'R', 'Reis', 27, 'M', 'PORTUGAL', 'Portugal22'),
('PRTST3', 'Joao', 'S', 'Santos', 25, 'M', 'PORTUGAL', 'Portugal22');

ALTER TABLE `assits`
  ADD PRIMARY KEY (`TimeAssit`,`Assit_Player`,`Assit_Match`,`Assit_HYear`),
  ADD KEY `FK_ASSIT_RELATED` (`Assit_Player`,`Assit_Match`,`Assit_HYear`);

ALTER TABLE `card`
  ADD PRIMARY KEY (`TypeCard`,`Time`,`Card_Player`,`Card_Match`,`Card_HYear`),
  ADD KEY `FK_CARD_RELATED` (`Card_Player`,`Card_Match`,`Card_HYear`);

ALTER TABLE `coach`
  ADD PRIMARY KEY (`CoachCode`),
  ADD KEY `FK_SUPER_COACH` (`LeadCode`);

ALTER TABLE `control_match`
  ADD PRIMARY KEY (`CM_RefeCode`,`CM_MatchCode`,`CM_HYearCode`),
  ADD KEY `CM_MatchCode` (`CM_MatchCode`,`CM_HYearCode`);

ALTER TABLE `gate_stadium`
  ADD PRIMARY KEY (`GateStadium`,`GS_SCode`),
  ADD KEY `FK_GATE_STADIUM` (`GS_SCode`);

ALTER TABLE `goals`
  ADD PRIMARY KEY (`TimeGoal`,`Goal_Player`,`Goal_Match`,`Goal_HYear`),
  ADD KEY `FK_GOAL_RELATED` (`Goal_Player`,`Goal_Match`,`Goal_HYear`);

ALTER TABLE `include`
  ADD PRIMARY KEY (`I_HYearCode`,`I_TeamName`),
  ADD KEY `FK_INCLUDE_TEAM` (`I_TeamName`);

ALTER TABLE `is_played`
  ADD PRIMARY KEY (`is_PlayedCode`,`is_MatchCode`,`is_HYearCode`),
  ADD KEY `FK_PLAYED_RELATED` (`is_MatchCode`,`is_HYearCode`);

ALTER TABLE `matches`
  ADD PRIMARY KEY (`MatchCode`,`M_HYearCode`),
  ADD KEY `FK_MATCH_STADIUM` (`M_SCode`),
  ADD KEY `FK_MATCH_YEAR` (`M_HYearCode`);

ALTER TABLE `nation`
  ADD PRIMARY KEY (`FFCountryCode`),
  ADD UNIQUE KEY `Nname` (`Nname`);

ALTER TABLE `participate_in`
  ADD PRIMARY KEY (`P_FFCCode`,`P_HYearCode`),
  ADD KEY `FK_YEAR_PARTICIPATE` (`P_HYearCode`);


ALTER TABLE `player`
  ADD PRIMARY KEY (`PlayerCode`);

ALTER TABLE `play_in`
  ADD PRIMARY KEY (`TeamPlay`,`MatchPlay`,`HYearPlay`),
  ADD KEY `MatchPlay` (`MatchPlay`,`HYearPlay`);

ALTER TABLE `referee`
  ADD PRIMARY KEY (`RefID`);

ALTER TABLE `season`
  ADD PRIMARY KEY (`HostYearCode`),
  ADD KEY `FK_NATION_SEASON` (`S_FFCCode`);

ALTER TABLE `season_team`
  ADD PRIMARY KEY (`TeamName`),
  ADD KEY `FK_TEAM_NATION` (`T_FFCCode`);

ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`SpsName`);

ALTER TABLE `sposor_for`
  ADD PRIMARY KEY (`SF_Name`,`SF_Team`),
  ADD KEY `FK_SPONFOR_TEAM` (`SF_Team`);

ALTER TABLE `stadium`
  ADD PRIMARY KEY (`StadiumCode`),
  ADD UNIQUE KEY `SName` (`SName`);

ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffCode`);

ALTER TABLE `team_member`
  ADD PRIMARY KEY (`MemberCode`),
  ADD KEY `FK_TEAM_IN_SEASON` (`TM_Team`);

ALTER TABLE `assits`
  ADD CONSTRAINT `FK_ASSIT_RELATED` FOREIGN KEY (`Assit_Player`,`Assit_Match`,`Assit_HYear`) REFERENCES `is_played` (`is_PlayedCode`, `is_MatchCode`, `is_HYearCode`) ON DELETE CASCADE;

ALTER TABLE `card`
  ADD CONSTRAINT `FK_CARD_RELATED` FOREIGN KEY (`Card_Player`,`Card_Match`,`Card_HYear`) REFERENCES `is_played` (`is_PlayedCode`, `is_MatchCode`, `is_HYearCode`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `coach`
  ADD CONSTRAINT `FK_CODE_COACH_TEAM` FOREIGN KEY (`CoachCode`) REFERENCES `team_member` (`MemberCode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SUPER_COACH` FOREIGN KEY (`LeadCode`) REFERENCES `coach` (`CoachCode`) ON UPDATE CASCADE;

ALTER TABLE `control_match`
  ADD CONSTRAINT `control_match_ibfk_1` FOREIGN KEY (`CM_RefeCode`) REFERENCES `referee` (`RefID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `control_match_ibfk_2` FOREIGN KEY (`CM_MatchCode`,`CM_HYearCode`) REFERENCES `matches` (`MatchCode`, `M_HYearCode`) ON UPDATE CASCADE;

ALTER TABLE `gate_stadium`
  ADD CONSTRAINT `FK_GATE_STADIUM` FOREIGN KEY (`GS_SCode`) REFERENCES `stadium` (`StadiumCode`) ON DELETE CASCADE;

ALTER TABLE `goals`
  ADD CONSTRAINT `FK_GOAL_RELATED` FOREIGN KEY (`Goal_Player`,`Goal_Match`,`Goal_HYear`) REFERENCES `is_played` (`is_PlayedCode`, `is_MatchCode`, `is_HYearCode`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `include`
  ADD CONSTRAINT `FK_INCLUDE_TEAM` FOREIGN KEY (`I_TeamName`) REFERENCES `season_team` (`TeamName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_INCLUDE_TEAM_YEAR` FOREIGN KEY (`I_HYearCode`) REFERENCES `season` (`HostYearCode`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `is_played`
  ADD CONSTRAINT `FK_PLAYED_RELATED` FOREIGN KEY (`is_MatchCode`,`is_HYearCode`) REFERENCES `matches` (`MatchCode`, `M_HYearCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PLAYER_PLAY` FOREIGN KEY (`is_PlayedCode`) REFERENCES `player` (`PlayerCode`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `matches`
  ADD CONSTRAINT `FK_MATCH_STADIUM` FOREIGN KEY (`M_SCode`) REFERENCES `stadium` (`StadiumCode`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_MATCH_YEAR` FOREIGN KEY (`M_HYearCode`) REFERENCES `season` (`HostYearCode`) ON DELETE CASCADE;

ALTER TABLE `participate_in`
  ADD CONSTRAINT `FK_NATION_PARTICIPATE` FOREIGN KEY (`P_FFCCode`) REFERENCES `nation` (`FFCountryCode`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_YEAR_PARTICIPATE` FOREIGN KEY (`P_HYearCode`) REFERENCES `season` (`HostYearCode`) ON DELETE CASCADE;

ALTER TABLE `play_in`
  ADD CONSTRAINT `play_in_ibfk_1` FOREIGN KEY (`MatchPlay`,`HYearPlay`) REFERENCES `matches` (`MatchCode`, `M_HYearCode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `play_in_ibfk_2` FOREIGN KEY (`TeamPlay`) REFERENCES `season_team` (`TeamName`) ON UPDATE CASCADE;

ALTER TABLE `season`
  ADD CONSTRAINT `FK_NATION_SEASON` FOREIGN KEY (`S_FFCCode`) REFERENCES `nation` (`FFCountryCode`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `season_team`
  ADD CONSTRAINT `FK_TEAM_NATION` FOREIGN KEY (`T_FFCCode`) REFERENCES `nation` (`FFCountryCode`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `sposor_for`
  ADD CONSTRAINT `FK_SPONFOR_NAME` FOREIGN KEY (`SF_Name`) REFERENCES `sponsor` (`SpsName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SPONFOR_TEAM` FOREIGN KEY (`SF_Team`) REFERENCES `season_team` (`TeamName`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `staff`
  ADD CONSTRAINT `FK_STAFF_TEAM` FOREIGN KEY (`StaffCode`) REFERENCES `team_member` (`MemberCode`) ON DELETE CASCADE;

ALTER TABLE `team_member`
  ADD CONSTRAINT `FK_TEAM_IN_SEASON` FOREIGN KEY (`TM_Team`) REFERENCES `season_team` (`TeamName`) ON DELETE CASCADE ON UPDATE CASCADE;

