DROP TABLE IF EXISTS `jpa_scorer_db`.`m_code`;
CREATE TABLE `jpa_scorer_db`.`m_code` (
    `code_kbn` VARCHAR(50) NOT NULL COMMENT 'コード区分',
    `code1` VARCHAR(50) NOT NULL COMMENT 'コード1',
    `code2` VARCHAR(50) NOT NULL COMMENT 'コード2',
    `code3` VARCHAR(50) NOT NULL COMMENT 'コード3',
    `content1` VARCHAR(100) COMMENT 'コード内容1',
    `content2` VARCHAR(100) COMMENT 'コード内容2',
    `content3` VARCHAR(100) COMMENT 'コード内容3',
    `content4` VARCHAR(100) COMMENT 'コード内容4',
    `content5` VARCHAR(100) COMMENT 'コード内容5',
    `content6` VARCHAR(100) COMMENT 'コード内容6',
    `content7` VARCHAR(100) COMMENT 'コード内容7',
    `content8` VARCHAR(100) COMMENT 'コード内容8',
    `content9` VARCHAR(100) COMMENT 'コード内容9',
    `insert_dt` TIMESTAMP COMMENT '登録日時',
    `insert_user_id` VARCHAR(20) COMMENT '登録ユーザID',
    `insert_kino_id` VARCHAR(20) COMMENT '登録機能ID',
    `update_dt` TIMESTAMP COMMENT '更新日時',
    `update_user_id` VARCHAR(20) COMMENT '更新ユーザID',
    `update_kino_id` VARCHAR(20) COMMENT '更新機能ID',
    `revision` INT COMMENT 'リビジョン',
    PRIMARY KEY (`code_kbn`, `code1`, `code2`, `code3`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='コードマスタ';

DROP TABLE IF EXISTS `jpa_scorer_db`.`m_sequence`;
CREATE TABLE `jpa_scorer_db`.`m_sequence` (
    `sequence_kbn` CHAR(2) NOT NULL COMMENT 'シーケンス区分',
    `date` CHAR(8) NOT NULL COMMENT '日付',
    `sequence_value` INT NOT NULL COMMENT 'シーケンス値',
    `insert_dt` TIMESTAMP COMMENT '登録日時',
    `insert_user_id` VARCHAR(20) COMMENT '登録ユーザID',
    `insert_kino_id` VARCHAR(20) COMMENT '登録機能ID',
    `update_dt` TIMESTAMP COMMENT '更新日時',
    `update_user_id` VARCHAR(20) COMMENT '更新ユーザID',
    `update_kino_id` VARCHAR(20) COMMENT '更新機能ID',
    `revision` INT COMMENT 'リビジョン',
    PRIMARY KEY (`sequence_kbn`, `date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='シーケンスマスタ';

DROP TABLE IF EXISTS `jpa_scorer_db`.`m_player`;
CREATE TABLE `jpa_scorer_db`.`m_player` (
    `player_id` CHAR(6) NOT NULL COMMENT 'プレイヤーID',
    `jpa_player_no` CHAR(5) COMMENT 'JPAプレイヤーNo',
    `player_nm` VARCHAR(50) NOT NULL COMMENT 'プレイヤー名',
    `player_nm_en` VARCHAR(50) NOT NULL COMMENT 'プレイヤー名_英',
    `skill_level` INT COMMENT 'スキルレベル',
    `shozoku_team_id` CHAR(4) COMMENT '所属チームID',
    `insert_dt` TIMESTAMP COMMENT '登録日時',
    `insert_user_id` VARCHAR(20) COMMENT '登録ユーザID',
    `insert_kino_id` VARCHAR(20) COMMENT '登録機能ID',
    `update_dt` TIMESTAMP COMMENT '更新日時',
    `update_user_id` VARCHAR(20) COMMENT '更新ユーザID',
    `update_kino_id` VARCHAR(20) COMMENT '更新機能ID',
    `revision` INT COMMENT 'リビジョン',
    PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='プレイヤーマスタ';

DROP TABLE IF EXISTS `jpa_scorer_db`.`m_team`;
CREATE TABLE `jpa_scorer_db`.`m_team` (
    `team_id` CHAR(4) NOT NULL COMMENT 'チームID',
    `team_no` VARCHAR(5) COMMENT 'チームNo',
    `team_nm` VARCHAR(50) NOT NULL COMMENT 'チーム名',
    `home_store_id` CHAR(6) NOT NULL COMMENT 'ホーム店ID',
    `devisition_id` CHAR(4) NOT NULL COMMENT 'ディビジョンID',
    `insert_dt` TIMESTAMP COMMENT '登録日時',
    `insert_user_id` VARCHAR(20) COMMENT '登録ユーザID',
    `insert_kino_id` VARCHAR(20) COMMENT '登録機能ID',
    `update_dt` TIMESTAMP COMMENT '更新日時',
    `update_user_id` VARCHAR(20) COMMENT '更新ユーザID',
    `update_kino_id` VARCHAR(20) COMMENT '更新機能ID',
    `revision` INT COMMENT 'リビジョン',
    PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='チームマスタ';

DROP TABLE IF EXISTS `jpa_scorer_db`.`m_venue`;
CREATE TABLE `jpa_scorer_db`.`m_venue` (
    `venue_id` CHAR(6) NOT NULL COMMENT '会場ID',
    `devisition_id` CHAR(4) NOT NULL COMMENT 'ディビジョンID',
    `venue_nm` VARCHAR(50) NOT NULL COMMENT '会場名',
    `insert_dt` TIMESTAMP COMMENT '登録日時',
    `insert_user_id` VARCHAR(20) COMMENT '登録ユーザID',
    `insert_kino_id` VARCHAR(20) COMMENT '登録機能ID',
    `update_dt` TIMESTAMP COMMENT '更新日時',
    `update_user_id` VARCHAR(20) COMMENT '更新ユーザID',
    `update_kino_id` VARCHAR(20) COMMENT '更新機能ID',
    `revision` INT COMMENT 'リビジョン',
    PRIMARY KEY (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会場マスタ';

DROP TABLE IF EXISTS `jpa_scorer_db`.`m_devision`;
CREATE TABLE `jpa_scorer_db`.`m_devision` (
    `devisition_id` CHAR(4) NOT NULL COMMENT 'ディビジョンID',
    `devisition_nm` VARCHAR(50) NOT NULL COMMENT 'ディビジョン名',
    `insert_dt` TIMESTAMP COMMENT '登録日時',
    `insert_user_id` VARCHAR(20) COMMENT '登録ユーザID',
    `insert_kino_id` VARCHAR(20) COMMENT '登録機能ID',
    `update_dt` TIMESTAMP COMMENT '更新日時',
    `update_user_id` VARCHAR(20) COMMENT '更新ユーザID',
    `update_kino_id` VARCHAR(20) COMMENT '更新機能ID',
    `revision` INT COMMENT 'リビジョン',
    PRIMARY KEY (`devisition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='ディビジョンマスタ';

DROP TABLE IF EXISTS `jpa_scorer_db`.`t_match`;
CREATE TABLE `jpa_scorer_db`.`t_match` (
    `match_id` CHAR(12) NOT NULL COMMENT '試合ID',
    `match_day` CHAR(8) NOT NULL COMMENT '試合日',
    `home_team_id` CHAR(4) NOT NULL COMMENT 'ホームチームID',
    `visitor_team_id` CHAR(4) NOT NULL COMMENT 'ビジターチームID',
    `venue_id` CHAR(6) NOT NULL COMMENT '会場ID',
    `start_dt` TIMESTAMP COMMENT '開始日時',
    `end_dt` TIMESTAMP COMMENT '終了日時',
    `home_team_point` INT COMMENT 'ホームチーム得点',
    `visitor_team_point` INT COMMENT 'ビジターチーム得点',
    `win_team_kbn` CHAR(1) COMMENT '勝利チーム区分',
    `insert_dt` TIMESTAMP COMMENT '登録日時',
    `insert_user_id` VARCHAR(20) COMMENT '登録ユーザID',
    `insert_kino_id` VARCHAR(20) COMMENT '登録機能ID',
    `update_dt` TIMESTAMP COMMENT '更新日時',
    `update_user_id` VARCHAR(20) COMMENT '更新ユーザID',
    `update_kino_id` VARCHAR(20) COMMENT '更新機能ID',
    `revision` INT COMMENT 'リビジョン',
    PRIMARY KEY (`match_id`, `match_day`, `home_team_id`, `visitor_team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='試合';

DROP TABLE IF EXISTS `jpa_scorer_db`.`t_game`;
CREATE TABLE `jpa_scorer_db`.`t_game` (
    `match_id` CHAR(12) NOT NULL COMMENT '試合ID',
    `game_no` INT NOT NULL COMMENT '対戦No',
    `game_status` CHAR(1) NOT NULL COMMENT '対戦ステータス',
    `match_day` CHAR(8) NOT NULL COMMENT '対戦日',
    `start_dt` TIMESTAMP COMMENT '開始日時',
    `end_dt` TIMESTAMP COMMENT '終了日時',
    `home_player_id` CHAR(6) COMMENT 'ホーム_プレイヤーID',
    `home_jpa_player_no` CHAR(5) COMMENT 'ホーム_JPAプレイヤーNo',
    `home_player_nm` VARCHAR(50) COMMENT 'ホーム_プレイヤー名',
    `home_skill_level` INT COMMENT 'ホーム_スキルレベル',
    `home_goal` INT COMMENT 'ホーム_目標点数',
    `visitor_player_id` CHAR(6) COMMENT 'ビジター_プレイヤーID',
    `visitor_jpa_player_no` CHAR(5) COMMENT 'ビジター_JPAプレイヤーNo',
    `visitor_player_nm` VARCHAR(50) COMMENT 'ビジター_プレイヤー名',
    `visitor_skill_level` INT COMMENT 'ビジター_スキルレベル',
    `visitor_goal` INT COMMENT 'ビジター_目標点数',
    `home_player_point` INT COMMENT 'ホーム_プレイヤー得点',
    `visitor_player_point` INT COMMENT 'ビジター_プレイヤー得点',
    `home_game_point` INT COMMENT 'ホーム_ゲーム得点',
    `visitor_game_point` INT COMMENT 'ビジター_ゲーム得点',
    `win_player_kbn` CHAR(1) COMMENT '勝利プレイヤー区分',
    `first_player_kbn` CHAR(1) COMMENT '先攻プレイヤー区分',
    `inning` INT COMMENT 'イニング',
    `insert_dt` TIMESTAMP COMMENT '登録日時',
    `insert_user_id` VARCHAR(20) COMMENT '登録ユーザID',
    `insert_kino_id` VARCHAR(20) COMMENT '登録機能ID',
    `update_dt` TIMESTAMP COMMENT '更新日時',
    `update_user_id` VARCHAR(20) COMMENT '更新ユーザID',
    `update_kino_id` VARCHAR(20) COMMENT '更新機能ID',
    `revision` INT COMMENT 'リビジョン',
    PRIMARY KEY (`match_id`, `game_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='対戦';

DROP TABLE IF EXISTS `jpa_scorer_db`.`t_game_action`;
CREATE TABLE `jpa_scorer_db`.`t_game_action` (
    `match_id` CHAR(12) NOT NULL COMMENT '試合ID',
    `game_no` INT NOT NULL COMMENT '対戦No',
    `action_no` INT NOT NULL COMMENT 'アクションNo',
    `action_player_kbn` CHAR(1) NOT NULL COMMENT 'アクションプレイヤー区分',
    `rack` INT NOT NULL COMMENT 'ラック',
    `inning` INT NOT NULL COMMENT 'イニング',
    `action_type` CHAR(1) NOT NULL COMMENT 'アクション種別',
    `ball_num` INT COMMENT '球番号',
    `insert_dt` TIMESTAMP COMMENT '登録日時',
    `insert_user_id` VARCHAR(20) COMMENT '登録ユーザID',
    `insert_kino_id` VARCHAR(20) COMMENT '登録機能ID',
    `update_dt` TIMESTAMP COMMENT '更新日時',
    `update_user_id` VARCHAR(20) COMMENT '更新ユーザID',
    `update_kino_id` VARCHAR(20) COMMENT '更新機能ID',
    `revision` INT COMMENT 'リビジョン',
    PRIMARY KEY (`match_id`, `game_no`, `action_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='対戦アクション';

-- DROP TABLE IF EXISTS `jpa_scorer_db`.``;
-- CREATE TABLE `jpa_scorer_db`.`` (
--     ``  COMMENT '',
--     ``  COMMENT '',
--     ``  COMMENT '',
--     ``  COMMENT '',
--     ``  COMMENT '',
--     ``  COMMENT '',
--     ``  COMMENT '',
--     ``  COMMENT '',
--     ``  COMMENT '',
--     ``  COMMENT '',
--     ``  COMMENT '',
--     ``  COMMENT '',
--     `insert_dt` TIMESTAMP COMMENT '登録日時',
--     `insert_user_id` VARCHAR(20) COMMENT '登録ユーザID',
--     `insert_kino_id` VARCHAR(20) COMMENT '登録機能ID',
--     `update_dt` TIMESTAMP COMMENT '更新日時',
--     `update_user_id` VARCHAR(20) COMMENT '更新ユーザID',
--     `update_kino_id` VARCHAR(20) COMMENT '更新機能ID',
--     `revision` INT COMMENT 'リビジョン'
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='';

