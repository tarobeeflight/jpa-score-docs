-- アクション履歴取得

-- * SetParameter MATCHID '202604060001' String
-- * SetParameter GAMENO 1 Integer
SELECT /*アクション履歴取得*/
    A.match_id,
    A.game_no,
    A.action_no,
    A.action_player_kbn,
    A.rack,
    A.inning,
    A.action_type,
    A.ball_num
FROM
    t_game_action A
WHERE
    1 = 1
    AND A.match_id = :MATCHID
    AND A.game_no = :GAMENO
;