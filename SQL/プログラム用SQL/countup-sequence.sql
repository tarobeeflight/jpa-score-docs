-- シーケンスカウントアップ

-- * SetParameter SEQUENCEKBN '1' String
-- * SetParameter DATE '20260401' String
INSERT /*シーケンスカウントアップ*/ INTO
    m_sequence(
        sequence_kbn,
        date,
        sequence_value
    ) VALUES (
        :SEQUENCEKBN,
        :DATE,
        1
    )
ON DUPLICATE KEY UPDATE
    sequence_value = sequence_value + 1
;

-- 確認
select * from m_sequence;