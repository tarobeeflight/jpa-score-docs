-- 試合一覧初期化

-- 削除
DELETE FROM t_match WHERE 1 = 1;
DELETE FROM t_game WHERE 1 = 1;
DELETE FROM t_game_action WHERE 1 = 1;

-- 試合 初期データ
INSERT INTO t_match(match_id,match_day,home_team_id,visitor_team_id,venue_id,start_dt,end_dt,home_team_point,visitor_team_point,win_team_kbn,insert_dt,insert_user_id,insert_kino_id,update_dt,update_user_id,update_kino_id,revision) VALUES 
    ('202604060001','20260406','T001','T002','V01395',TIMESTAMP '2026-04-06 14:05:00.000',TIMESTAMP '2026-04-09 20:05:00.000',56,44,'1',NULL,'test','test',NULL,'test','test',1)
  , ('202604060002','20260406','T001','T002','V01395',TIMESTAMP '2026-04-06 14:05:00.000',TIMESTAMP '2026-04-09 20:05:00.000',56,44,'1',NULL,'test','test',NULL,'test','test',1);
-- 対戦 初期データ
INSERT INTO t_game(match_id,game_no,game_status,match_day,start_dt,end_dt,home_player_id,home_jpa_player_no,home_player_nm,home_skill_level,home_goal,visitor_player_id,visitor_jpa_player_no,visitor_player_nm,visitor_skill_level,visitor_goal,home_player_point,visitor_player_point,home_game_point,visitor_game_point,win_player_kbn,first_player_kbn,inning,insert_dt,insert_user_id,insert_kino_id,update_dt,update_user_id,update_kino_id,revision) VALUES 
    ('202604060001',1,'2','20260406',TIMESTAMP '2026-04-06 14:05:00.000',TIMESTAMP '2026-04-06 15:00:00.000','P16690','16690','斉藤翔',4,31,'P16950','16950','清水美紀',2,19,31,14,14,6,'1','1',25,NULL,'test','test',NULL,'test','test',1)
  , ('202604060001',2,'2','20260406',TIMESTAMP '2026-04-06 14:05:00.000',TIMESTAMP '2026-04-06 15:25:00.000','P16905','16905','村田勝太郎',3,25,'P16460','16460','ゴーラブ',5,38,25,35,12,8,'1','2',23,NULL,'test','test',NULL,'test','test',1)
  , ('202604060001',3,'2','20260406',TIMESTAMP '2026-04-06 15:05:00.000',TIMESTAMP '2026-04-06 16:25:00.000','P03360','03360','木村純',5,38,'P12536','12536','堀哲也',7,55,31,55,7,13,'2','1',28,NULL,'test','test',NULL,'test','test',1)
  , ('202604060001',4,'2','20260406',TIMESTAMP '2026-04-06 15:30:00.000',TIMESTAMP '2026-04-06 17:10:00.000','P16949','16949','稲角理子',2,19,'P01847','01847','松本徹',9,75,12,75,8,12,'2','2',31,NULL,'test','test',NULL,'test','test',1)
  , ('202604060001',5,'2','20260406',TIMESTAMP '2026-04-09 20:05:00.000',TIMESTAMP '2026-04-09 21:00:00.000','P05832','05832','石川金之助',6,46,'P16461','16461','大国日向子',1,14,46,8,15,5,'1','1',28,NULL,'test','test',NULL,'test','test',1)
  , ('202604060002',1,'2','20260406',TIMESTAMP '2026-04-06 14:05:00.000',TIMESTAMP '2026-04-06 15:00:00.000','P16690','16690','斉藤翔',4,31,'P16950','16950','清水美紀',2,19,31,14,14,6,'1','1',25,NULL,'test','test',NULL,'test','test',1)
  , ('202604060002',2,'2','20260406',TIMESTAMP '2026-04-06 14:05:00.000',TIMESTAMP '2026-04-06 15:25:00.000','P16905','16905','村田勝太郎',3,25,'P16460','16460','ゴーラブ',5,38,25,35,12,8,'1','2',23,NULL,'test','test',NULL,'test','test',1)
  , ('202604060002',3,'2','20260406',TIMESTAMP '2026-04-06 15:05:00.000',TIMESTAMP '2026-04-06 16:25:00.000','P03360','03360','木村純',5,38,'P12536','12536','堀哲也',7,55,31,55,7,13,'2','1',28,NULL,'test','test',NULL,'test','test',1)
  , ('202604060002',4,'2','20260406',TIMESTAMP '2026-04-06 15:30:00.000',TIMESTAMP '2026-04-06 17:10:00.000','P16949','16949','稲角理子',2,19,'P01847','01847','松本徹',9,75,12,75,8,12,'2','2',31,NULL,'test','test',NULL,'test','test',1)
  , ('202604060002',5,'2','20260406',TIMESTAMP '2026-04-09 20:05:00.000',TIMESTAMP '2026-04-09 21:00:00.000','P05832','05832','石川金之助',6,46,'P16461','16461','大国日向子',1,14,46,8,15,5,'1','1',28,NULL,'test','test',NULL,'test','test',1);
-- 対戦アクション 初期データ



-- 確認
-- *DataTitle 試合
SELECT * FROM t_match;
-- *DataTitle 対戦
SELECT * FROM t_game;
-- *DataTitle 対戦アクション
SELECT * FROM t_game_action;
