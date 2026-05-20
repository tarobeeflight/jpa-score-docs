-- 対戦完了更新

-- 確認
-- * SetParameter MATCH_ID '202605080001' String
-- * SetParameter GAME_NO 1 Integer
SELECT * FROM t_game WHERE match_id = :MATCH_ID AND game_no = :GAME_NO;


-- * SetParameter MATCH_ID '202605080001' String
-- * SetParameter GAME_NO 1 Integer
-- * SetParameter CONSTANTS_GAMESTATUS_FINISHED '2' String
-- * SetParameter END_DT '2026/05/17 16:40:00' DateTime
-- * SetParameter HOME_PLAYER_POINT 46 Integer
-- * SetParameter HOME_GAME_POINT 15 Integer
-- * SetParameter VISITOR_PLAYER_POINT 15 Integer
-- * SetParameter VISITOR_GAME_POINT 5 Integer
-- * SetParameter WIN_PLAYER_KBN '1' String
-- * SetParameter INNING 28 Integer
-- * SetParameter UPDATEUSERID 'test' String
-- * SetParameter UPDATEKINOID 'test' String
-- * SetParameter REVISION 3 Integer
UPDATE /*対戦完了更新*/
    t_game G
SET
    G.game_status = :CONSTANTS_GAMESTATUS_FINISHED
    , G.end_dt = :END_DT
    , G.home_player_point = :HOME_PLAYER_POINT
    , G.visitor_player_point = :VISITOR_PLAYER_POINT
    , G.home_game_point = :HOME_GAME_POINT
    , G.visitor_game_point = :VISITOR_GAME_POINT
    , G.win_player_kbn = :WIN_PLAYER_KBN
    , G.inning = :INNING
    , G.update_dt = now()
    , G.update_user_id = :UPDATEUSERID
    , G.update_kino_id = :UPDATEKINOID
    , G.revision = G.revision + 1
WHERE
    G.match_id = :MATCH_ID 
    AND G.game_no = :GAME_NO
    AND G.revision = :REVISION
;
