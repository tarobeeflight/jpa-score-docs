-- 試合取得

SELECT /*試合取得*/
    M.match_id,
    M.match_day,
    M.home_team_id,
    HOME.team_nm as home_team_nm,
    M.visitor_team_id,
    VISI.team_nm as vistor_team_nm,
    M.venue_id,
    V.venue_nm,
    M.start_dt,
    M.end_dt,
    M.home_team_point,
    M.visitor_team_point,
    M.win_team_kbn,
    M.revision
FROM
    t_match M
    /* ホームチーム */
    LEFT OUTER JOIN m_team HOME
    ON M.home_team_id = HOME.team_id
    /* ビジターチーム */
    LEFT OUTER JOIN m_team VISI
    ON M.visitor_team_id = VISI.team_id
    /* 会場 */
    LEFT OUTER JOIN m_venue V
    ON M.venue_id = V.venue_id
WHERE
    1 = 1
;
