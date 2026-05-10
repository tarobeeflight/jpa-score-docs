-- チーム取得
SELECT /*チーム取得*/
    T.team_id,
    T.team_no,
    T.team_nm,
    T.home_store_id,
    T.devisition_id
FROM
    m_team T
WHERE
    1 = 1
;