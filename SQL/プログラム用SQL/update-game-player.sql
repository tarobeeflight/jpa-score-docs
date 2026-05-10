-- 対戦プレイヤー更新

-- * SetParameter MATCH_ID '202604290018' String
-- * SetParameter GAME_NO 1 Integer
-- * SetParameter CONSTANTS_GAMESTATUS_PLAYERREGISTERED '1' String
-- * SetParameter START_DT '2026/04/29 14:05:00' DateTime
-- * SetParameter HOME_PLAYER_ID NULL String
-- * SetParameter HOME_JPA_PLAYER_NO NULL String
-- * SetParameter HOME_PLAYER_NM '村田勝太郎' String
-- * SetParameter HOME_SKILL_LEVEL 3 Integer
-- * SetParameter HOME_GOAL 25 Integer
-- * SetParameter REVISION 1 Integer
-- * SetParameter VISITOR_PLAYER_ID NULL String
-- * SetParameter VISITOR_JPA_PLAYER_NO NULL String
-- * SetParameter VISITOR_PLAYER_NM '稲角理子' String
-- * SetParameter VISITOR_SKILL_LEVEL 2 Integer
-- * SetParameter VISITOR_GOAL 19 Integer
-- * SetParameter CONSTANTS_ZERO 0 Integer
UPDATE /*対戦プレイヤー更新*/
    t_game G
SET
    G.game_status = :CONSTANTS_GAMESTATUS_PLAYERREGISTERED
    , G.start_dt = :START_DT
    , G.home_player_id = :HOME_PLAYER_ID
    , G.home_jpa_player_no = :HOME_JPA_PLAYER_NO
    , G.home_player_nm = :HOME_PLAYER_NM
    , G.home_skill_level = :HOME_SKILL_LEVEL
    , G.home_goal = :HOME_GOAL
    , G.visitor_player_id = :VISITOR_PLAYER_ID
    , G.visitor_jpa_player_no = :VISITOR_JPA_PLAYER_NO
    , G.visitor_player_nm = :VISITOR_PLAYER_NM
    , G.visitor_skill_level = :VISITOR_SKILL_LEVEL
    , G.visitor_goal = :VISITOR_GOAL
    , G.home_player_point = :CONSTANTS_ZERO
    , G.visitor_player_point = :CONSTANTS_ZERO
    , G.home_game_point = :CONSTANTS_ZERO
    , G.visitor_game_point = :CONSTANTS_ZERO
    , G.inning = :CONSTANTS_ZERO
    , G.update_dt = now()
    , G.update_user_id = :UPDATEUSERID
    , G.update_kino_id = :UPDATEKINOID
    , G.revision = G.revision + 1
WHERE
    G.match_id = :MATCH_ID 
    AND G.game_no = :GAME_NO
    AND G.revision = :REVISION
;