CREATE TABLE `d1_account_base` (
    `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
    `inf_rec_type` varchar(3) DEFAULT '210' COMMENT '信息记录类型 数据字典 默认210，代表个人借贷账户信息记录',
    `acct_type` varchar(2) DEFAULT 'D1' COMMENT '账户类型 数据字典 默认D1，代表非循环贷账户',
    `acct_code` varchar(60) DEFAULT NULL COMMENT '账户标识码',
    `rpt_date` date DEFAULT NULL COMMENT '信息报告日期 YYYY-MM-DD',
    `rpt_date_code` int(2) DEFAULT NULL COMMENT '报告时点说明代码 数据字典',
    `name` varchar(30) DEFAULT NULL COMMENT '借款人姓名',
    `id_type` varchar(2) DEFAULT NULL COMMENT '借款人证件类型 数据字典',
    `id_num` varchar(20) DEFAULT NULL COMMENT '借款人证件号码',
    `mngmt_org_code` varchar(14) DEFAULT NULL COMMENT '业务管理机构代码',
    PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='D1借贷账户基础信息表';

CREATE TABLE `d1_account_base_info` (
    `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
    `busi_lines` int(1) DEFAULT NULL COMMENT '借贷业务大类 数据字典',
    `business_detail_lines` varchar(2) DEFAULT NULL COMMENT '借贷业务种类细分 数据字典',
    `open_date` date DEFAULT NULL COMMENT '开户日期 YYYY-MM-DD',
    `cy` varchar(3) DEFAULT NULL COMMENT '币种',
    `loan_amt` bigint(15) DEFAULT NULL COMMENT '借款金额',
    `flag` int(1) DEFAULT NULL COMMENT '分次放款标志 数据字典',
    `due_date` date DEFAULT NULL COMMENT '到期日期',
    `repay_mode` int(2) DEFAULT NULL COMMENT '还款方式',
    `repay_freqcy` varchar(2) DEFAULT NULL COMMENT '还款频率 数据字典',
    `repay_prd` int(3) DEFAULT NULL COMMENT '还款期数',
    `apply_busi_dist` varchar(6) DEFAULT NULL COMMENT '业务申请地行政区划代码 数据字典',
    `guar_mode` int(1) DEFAULT NULL COMMENT '担保方式 数据字典',
    `oth_repy_guar_way` int(1) DEFAULT NULL COMMENT '其他还款保证方式 数据字典',
    `asset_trand_flag` int(1) DEFAULT NULL COMMENT '资产转让标志 数据字典',
    `fund_sou` int(2) DEFAULT NULL COMMENT '业务经营类型 数据字典',
    `loan_form` int(1) DEFAULT NULL COMMENT '贷款发放形式 数据字典',
    PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='D1借贷账户基本信息表';

CREATE TABLE `d1_rlt_repayment_info` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
    `record_id` bigint(20) NOT NULL COMMENT '信息id',
    `info_id_type` int(1) DEFAULT NULL COMMENT '身份类别 数据字典',
    `arlp_name` varchar(80) DEFAULT NULL COMMENT '责任人名称',
    `arlp_cert_type` varchar(2) DEFAULT NULL COMMENT '责任人身份标识类型 数据字典',
    `arlp_cert_num` varchar(40) DEFAULT NULL COMMENT '责任人身份标识号码',
    `arlp_type` int(1) DEFAULT NULL COMMENT '还款责任人类型 数据字典',
    `arlp_amt` bigint(15) DEFAULT NULL COMMENT '还款责任金额',
    `warty_sign` int(1) DEFAULT NULL COMMENT '联保标志 数据字典',
    `max_guar_mcc` varchar(60) DEFAULT NULL COMMENT '保证合同编号',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='D1借贷账户相关还款责任人信息表';

CREATE TABLE `d1_motga_cltal_ctrct_info` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
    `record_id` bigint(20) NOT NULL COMMENT '信息id',
    `ccc` varchar(60) DEFAULT NULL COMMENT '抵（质）押合同标识码',
    PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='D1借贷账户抵质押物信息表';

CREATE TABLE `d1_acct_cred` (
    `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
    `mcc` varchar(60) DEFAULT NULL COMMENT '授信协议标识码',
    PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='D1借贷账户授信额度信息表';

CREATE TABLE `d1_acct_mthly_blg_info` (
    `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
    `month` int(2) DEFAULT NULL COMMENT '月份',
    `sett_date` date DEFAULT NULL COMMENT '结算/应还款日',
    `acct_status` int(2) DEFAULT NULL COMMENT '账户状态 数据字典',
    `acct_bal` bigint(15) DEFAULT NULL COMMENT '余额',
    `rem_rep_prd` int(3) DEFAULT NULL COMMENT '剩余还款期数',
    `five_cate` int(1) DEFAULT NULL COMMENT '五级分类 数据字典',
    `five_cate_adj_date` date DEFAULT NULL COMMENT '五级分类认定日期',
    `rpy_status` varchar(1) DEFAULT NULL COMMENT '当前还款状态 数据字典',
    `overd_prd` int(3) DEFAULT NULL COMMENT '当前逾期期数',
    `tot_overd` bigint(15) DEFAULT NULL COMMENT '当前逾期总额',
    `overd_princ` bigint(15) DEFAULT NULL COMMENT '当前逾期本金',
    `oved31_60_princ` bigint(15) DEFAULT NULL COMMENT '逾期 31-60 天未归还本金',
    `oved61_90_princ` bigint(15) DEFAULT NULL COMMENT '逾期 61-90 天未归还本金',
    `oved91_180_princ` bigint(15) DEFAULT NULL COMMENT '逾期 91-180 天未归还本金',
    `oved_princ180` bigint(15) DEFAULT NULL COMMENT '逾期 180 天以上未归还本金',
    `cur_rpy_amt` bigint(15) DEFAULT NULL COMMENT '本月应还款金额',
    `act_rpy_amt` bigint(15) DEFAULT NULL COMMENT '本月实际还款金额',
    `lat_rpy_date` date DEFAULT NULL COMMENT '最近一次实际还款日期',
    `close_date` date DEFAULT NULL COMMENT '账户关闭日期',
    PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='D1借贷账户月度表现信息表';

CREATE TABLE `d1_acct_dbt_info` (
    `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
    `acct_status` int(2) DEFAULT NULL COMMENT '账户状态 数据字典',
    `acct_bal` bigint(15) DEFAULT NULL COMMENT '余额',
    `five_cate` int(1) DEFAULT NULL COMMENT '五级分类 数据字典',
    `five_cate_adj_date` date DEFAULT NULL COMMENT '五级分类认定日期',
    `rem_rep_prd` int(3) DEFAULT NULL COMMENT '剩余还款期数',
    `rpy_status` varchar(1) DEFAULT NULL COMMENT '当前还款状态 数据字典',
    `overd_prd` int(3) DEFAULT NULL COMMENT '当前逾期期数',
    `tot_overd` bigint(15) DEFAULT NULL COMMENT '当前逾期总额',
    `lat_rpy_amt` bigint(15) DEFAULT NULL COMMENT '最近一次实际还款金额',
    `lat_rpy_date` date DEFAULT NULL COMMENT '最近一次实际还款日期',
    `close_date` date DEFAULT NULL COMMENT '账户关闭日期',
    PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='D1借贷账户非月度表现信息表';

CREATE TABLE `d1_acct_spec_trst_dspn` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
    `record_id` bigint(20) NOT NULL COMMENT '信息id',
    `chan_tran_type` int(2) DEFAULT NULL COMMENT '交易类型 数据字典',
    `tran_date` date DEFAULT NULL COMMENT '交易日期',
    `tran_amt` bigint(15) DEFAULT NULL COMMENT '交易金额',
    `due_tran_mon` int(3) DEFAULT NULL COMMENT '到期日期变更月数',
    `det_info` varchar(200) DEFAULT NULL COMMENT '交易明细信息',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='D1借贷账户特殊交易说明信息表';



CREATE TABLE `d1_prepare_info_record` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '信息id',
  `data_status` int(1) DEFAULT '0' COMMENT '数据状态 0-未修改的源数据 1-已修改源数据 2-反馈数据生成 3-已修改反馈数据 枚举',
  `create_time` date NOT NULL COMMENT '创建时间',
  `create_user` varchar(20) NOT NULL DEFAULT '58_admin' COMMENT '创建用户',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` varchar(20) DEFAULT NULL COMMENT '最后一次修改用户',
  `last_record_id` bigint(20) DEFAULT '0' COMMENT '生成此记录的已报送记录id',
  PRIMARY KEY (`record_id`),
  KEY `prepare_record_id` (`record_id`),
  KEY `prepare_report_type` (`record_id`),
  KEY `prepare_account_code` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='待报送D1借贷账户信息记录标识表';

CREATE TABLE `d1_reported_info_record` (
  `record_id` bigint(20) NOT NULL COMMENT '信息id',
  `message_file_id` bigint(20) NOT NULL COMMENT '报文文件id 关联message_file_info表',
  `feedback_file_id` bigint(20) DEFAULT NULL COMMENT '反馈报文文件id 关联feedback_file_info表',
  `status` int(2) NOT NULL COMMENT '数据状态 1-已生成报文 2-预校验出错 3-反馈出错 4-成功入库 枚举',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_user` varchar(20) NOT NULL COMMENT '创建用户',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` varchar(20) DEFAULT NULL COMMENT '最后一次修改用户',
  `prepare_create_time` datetime NOT NULL COMMENT '用于保留待报送表中该条数据的创建时间',
  `last_record_id` bigint(20) unsigned DEFAULT '0' COMMENT '生成此记录的上一条已报送记录id',
  `report_type` int(1) DEFAULT NULL COMMENT '报告类型 1-新增客户资料 2-更新客户资料 枚举',
  `is_report` int(1) DEFAULT '1' COMMENT '是否需要报送 1-需要报送 0-不需要报送',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已报送D1借贷账户信息记录标识表';


