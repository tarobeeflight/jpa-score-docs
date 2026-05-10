-- ‘Îíæ“¾

SELECT /*‘ÎíƒŠƒXƒgæ“¾*/
    G.match_id,
    G.game_no,
    G.game_status,
    G.match_day,
    G.start_dt,
    G.end_dt,
    G.home_player_id,
    G.home_jpa_player_no,
    G.home_player_nm,
    G.visitor_player_id,
    G.visitor_jpa_player_no,
    G.visitor_player_nm,
    G.home_skill_level,
    G.visitor_skill_level,
    G.home_goal,
    G.visitor_goal,
    G.home_player_point,
    G.visitor_player_point,
    G.win_player_kbn,
    G.first_player_kbn,
    G.inning,
    G.revision
FROM
    t_game G
WHERE
    1 = 1
;
    
