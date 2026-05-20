-- 対戦アクション
-- * SetParameter MATCHID '202605080001' String
-- * SetParameter GAMENO 1 Integer
-- * SetParameter ACTION_NO 2 Integer
-- * SetParameter ACTION_PLAYER_KBN '1' String
-- * SetParameter RACK 1 Integer
-- * SetParameter INNING 1 Integer
-- * SetParameter ACTION_TYPE '5' String
-- * SetParameter BALL_NUM NULL Integer
-- * SetParameter INSERTUSERID 'test' String
-- * SetParameter INSERTKINOID 'test' String
-- * SetParameter UPDATEUSERID 'test' String
-- * SetParameter UPDATEKINOID 'test' String
INSERT /*対戦アクション作成*/INTO 
    t_game_action( 
        match_id
        , game_no
        , action_no
        , action_player_kbn
        , rack
        , inning
        , action_type
        , ball_num
        , insert_dt
        , insert_user_id
        , insert_kino_id
        , update_dt
        , update_user_id
        , update_kino_id
        , revision
    ) 
    VALUES ( 
        :MATCH_ID
        , :GAME_NO
        , :ACTION_NO
        , :ACTION_PLAYER_KBN
        , :RACK
        , :INNING
        , :ACTION_TYPE
        , :BALL_NUM
        , now()
        , :INSERTUSERID
        , :INSERTKINOID
        , now()
        , :UPDATEUSERID
        , :UPDATEKINOID
        , 1
    )
;
