-- 試合作成
INSERT /*試合作成*/ INTO
    t_match (
        match_id,
        match_day,
        home_team_id,
        visitor_team_id,
        venue_id,
        start_dt,
        end_dt,
        home_team_point,
        visitor_team_point,
        win_team_kbn,
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
        :MATCHDAY,
        :HOMETEAMID,
        :VISITORTEAMID,
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