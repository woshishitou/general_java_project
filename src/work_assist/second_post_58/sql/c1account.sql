CREATE TABLE `c1_account_base` (
    `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
    `inf_rec_type` varchar(3) DEFAULT '210' COMMENT '信息记录类型 数据字典 默认210，代表个人借贷账户信息记录',
    `acct_type` varchar(2) DEFAULT 'C1' COMMENT '账户类型 数据字典 默认C1，代表催收账户',
    `acct_code` varchar(60) DEFAULT NULL COMMENT '账户标识码',
    `rpt_date` date DEFAULT NULL COMMENT '信息报告日期 YYYY-MM-DD',
    `rpt_date_code` int(2) DEFAULT NULL COMMENT '报告时点说明代码 数据字典',
    `name` varchar(30) DEFAULT NULL COMMENT '借款人姓名',
    `id_type` varchar(2) DEFAULT NULL COMMENT '借款人证件类型 数据字典',
    `id_num` varchar(20) DEFAULT NULL COMMENT '借款人证件号码',
    `mngmt_org_code` varchar(14) DEFAULT NULL COMMENT '业务管理机构代码',
    PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='C1借贷账户基础信息表';

CREATE TABLE `c1_account_base_info` (
    `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
    `busi_lines` int(1) DEFAULT NULL COMMENT '借贷业务大类 数据字典',
    `busi_dtl_lines` varchar(2) DEFAULT NULL COMMENT '借贷业务种类细分 数据字典',
    `open_date` date DEFAULT NULL COMMENT '开户日期 YYYY-MM-DD',
    `cy` varchar(3) DEFAULT NULL COMMENT '币种',
    `loan_amt` bigint(15) DEFAULT NULL COMMENT '借款金额',
    PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='C1借贷账户基本信息表';

CREATE TABLE `c1_rlt_repayment_info` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='C1借贷账户相关还款责任人信息表';

CREATE TABLE `c1_acct_orig_creditor_info` (
    `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
    `init_cred_name` varchar(80) DEFAULT NULL COMMENT '初始债权人名称',
    `init_cred_org_nm` varchar(18) DEFAULT NULL COMMENT '初始债权人机构代码',
    `orig_dbt_cate` int(1) DEFAULT NULL COMMENT '原债务种类，数据字典',
    `init_rpy_sts` int(1) DEFAULT NULL COMMENT '债权转移时的还款状态，数据字典',
    PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='C1借贷账户初始债权说明信息表';

CREATE TABLE `c1_acct_dbt_info` (
    `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
    `acct_status` int(2) DEFAULT NULL COMMENT '账户状态 数据字典',
    `acct_bal` bigint(15) DEFAULT NULL COMMENT '余额',
    `lat_rpy_amt` bigint(15) DEFAULT NULL COMMENT '最近一次实际还款金额',
    `lat_rpy_date` date DEFAULT NULL COMMENT '最近一次实际还款日期',
    `close_date` date DEFAULT NULL COMMENT '账户关闭日期',
    PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='C1借贷账户非月度表现信息表';

CREATE TABLE `c1_acct_spec_trst_dspn` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
    `record_id` bigint(20) NOT NULL COMMENT '信息id',
    `chan_tran_type` int(2) DEFAULT NULL COMMENT '交易类型 数据字典',
    `tran_date` date DEFAULT NULL COMMENT '交易日期',
    `tran_amt` bigint(15) DEFAULT NULL COMMENT '交易金额',
    `due_tran_mon` int(3) DEFAULT NULL COMMENT '到期日期变更月数',
    `det_info` varchar(200) DEFAULT NULL COMMENT '交易明细信息',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='C1借贷账户特殊交易说明信息表';

CREATE TABLE `c1_prepare_info_record` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='待报送C1借贷账户信息记录标识表';

CREATE TABLE `c1_reported_info_record` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已报送C1借贷账户信息记录标识表';


