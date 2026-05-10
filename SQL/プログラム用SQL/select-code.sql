-- コードマスタ取得

SELECT /*コードマスタ取得*/
    C.code_kbn,
    C.code1,
    C.code2,
    C.code3,
    C.content1,
    C.content2,
    C.content3,
    C.content4,
    C.content5,
    C.content6,
    C.content7,
    C.content8,
    C.content9
FROM
    m_code C
WHERE
    1 = 1
    AND C.code_kbn = :CODEKBN
    ;