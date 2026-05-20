-- 対戦作成

-- * SetParameter MATCHID '202604010999' String
-- * SetParameter GAMENO '1' String
-- * SetParameter GAMESTATUS '0' String
-- * SetParameter MATCHDAY '20260401' String
-- * SetParameter INSERTUSERID 'test' String
-- * SetParameter INSERTKINOID 'test' String
-- * SetParameter UPDATEUSERID 'test' String
-- * SetParameter UPDATEKINOID 'test' String
INSERT /*対戦作成*/ INTO
    t_game (
        match_id,
        game_no,
        game_status,
        match_day,
        start_dt,
        end_dt,
        home_player_id,
        home_jpa_player_no,
        home_player_nm,
        home_skill_level,
        home_goal,
        visitor_player_id,
        visitor_jpa_player_no,
        visitor_player_nm,
        visitor_skill_level,
        visitor_goal,
        home_player_point,
        visitor_player_point,
        home_game_point,
        visitor_game_point,
        win_player_kbn,
        first_player_kbn,
        inning,
        insert_dt,
        insert_user_id,
        insert_kino_id,
        update_dt,
        update_user_id,
        update_kino_id,
        revision
    )
    VALUES (
        :MATCHID,
        :GAMENO,
        :GAMESTATUS,
        :MATCHDAY,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NOW(),
        :INSERTUSERID,
        :INSERTKINOID,
        NOW(),
        :UPDATEUSERID,
        :UPDATEKINOID,
        1
    )
;
