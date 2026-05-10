-- 対戦先攻プレイヤー更新

-- * SetParameter MATCH_ID '202604290018' String
-- * SetParameter GAME_NO 1 Integer
-- * SetParameter FIRST_PLAYER_KBN '1' String
-- * SetParameter UPDATEUSERID 'test' String
-- * SetParameter UPDATEKINOID 'test' String
-- * SetParameter REVISION 1 Integer
UPDATE /*対戦先攻プレイヤー更新*/
    t_game G
SET
    G.first_player_kbn = :FIRST_PLAYER_KBN
    , G.update_dt = now()
    , G.update_user_id = :UPDATEUSERID
    , G.update_kino_id = :UPDATEKINOID
    , G.revision = G.revision + 1
WHERE
    G.match_id = :MATCH_ID 
    AND G.game_no = :GAME_NO
    AND G.revision = :REVISION
;
