-- *DataTitle コードマスタ
SELECT * FROM m_code;
-- *DataTitle シーケンスマスタ
SELECT * FROM m_sequence;
-- *DataTitle プレイヤーマスタ
SELECT * FROM m_player;
-- *DataTitle チームマスタ
SELECT * FROM m_team;
-- *DataTitle 会場マスタ
SELECT * FROM m_venue;
-- *DataTitle ディビジョンマスタ
SELECT * FROM m_devision;
-- *DataTitle 試合
SELECT * FROM t_match;
-- *DataTitle 対戦
SELECT * FROM t_game;
-- *DataTitle 対戦アクション
SELECT * FROM t_game_action;


select t1.match_id as '試合ID', t1.match_day as '試合日', m1.team_nm as 'ホームチーム名', m2.team_nm as 'ビジターチーム名',
    t2.game_no as '対戦番号', t2.home_player_nm as 'ホームプレイヤー名', t2.visitor_player_nm as 'ビジタープレイヤー名' 
from t_match t1 
left outer join m_team m1 on m1.team_id = t1.home_team_id
left outer join m_team m2 on m2.team_id = t1.visitor_team_id
left outer join t_game t2 on t1.match_id = t2.match_id;