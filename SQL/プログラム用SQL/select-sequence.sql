-- シーケンス取得

-- * SetParameter SEQUENCEKBN '1' String
-- * SetParameter DATE '20260401' String
SELECT /*シーケンス取得*/
    CONCAT(
        date,
        LPAD(sequence_value, 4, '0')
    ) as sequence_value
FROM
    m_sequence
WHERE
    1 = 1
    AND sequence_kbn = :SEQUENCEKBN
    AND date = :DATE
;