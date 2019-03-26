CREATE TABLE `person_basic_info` (
  `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
  `inf_rec_type` varchar(3) DEFAULT NULL COMMENT '信息记录类型 数据字典',
  `name` varchar(30) DEFAULT NULL COMMENT '客户姓名',
  `id_type` varchar(2) DEFAULT NULL COMMENT '证件类型 数据字典',
  `id_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `rpt_date_code` varchar(2) DEFAULT NULL COMMENT '报告时点说明代码 数据字典',
  `cimoc` varchar(14) DEFAULT NULL COMMENT '客户资料维护机构代码',
  `inf_surc_code` varchar(20) DEFAULT NULL COMMENT '信息来源编码',
  `rpt_date` date DEFAULT NULL COMMENT '信息报告日期',
  `customer_type` int(2) DEFAULT NULL COMMENT '客户资料类型 数据字典',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人基础信息表';

CREATE TABLE `person_career_info` (
  `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
  `emp_status` varchar(2) DEFAULT NULL COMMENT '就业状况 数据字典',
  `cpn_name` varchar(80) DEFAULT NULL COMMENT '单位名称',
  `cpn_type` varchar(2) DEFAULT NULL COMMENT '单位性质 数据字典',
  `industry` varchar(1) DEFAULT NULL COMMENT '单位所属行业 数据字典',
  `cpn_addr` varchar(100) DEFAULT NULL COMMENT '单位详细地址',
  `cpn_pc` varchar(6) DEFAULT NULL COMMENT '单位地址邮政编码',
  `cpn_dist` int(6) DEFAULT NULL COMMENT '单位所在地行政区划 数据字典',
  `cpn_tel` varchar(25) DEFAULT NULL COMMENT '单位电话',
  `occupation` varchar(1) DEFAULT NULL COMMENT '职业 数据字典',
  `title` int(1) DEFAULT NULL COMMENT '职务 数据字典',
  `tech_title` int(1) DEFAULT NULL COMMENT '职称 数据字典',
  `work_start_date` int(4) DEFAULT NULL COMMENT '本单位工作起始年份',
  `octpn_info_up_date` date DEFAULT NULL COMMENT '信息更新日期',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人职业信息表';

CREATE TABLE `person_education_info` (
  `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
  `edu_level` int(2) DEFAULT NULL COMMENT '学历 数据字典',
  `aca_degree` int(1) DEFAULT NULL COMMENT '学位 数据字典',
  `edu_info_up_date` date DEFAULT NULL COMMENT '信息更新日期',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人教育信息表';

CREATE TABLE `person_income_info` (
  `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
  `annl_inc` bigint(15) DEFAULT NULL COMMENT '自报年收入',
  `tax_income` bigint(15) DEFAULT NULL COMMENT '纳税年收入',
  `inc_info_up_date` date DEFAULT NULL COMMENT '信息更新日期',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人收入信息表';

CREATE TABLE `person_marriage_info` (
  `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
  `mari_status` int(2) DEFAULT NULL COMMENT '婚姻状况 数据字典',
  `spo_name` varchar(30) DEFAULT NULL COMMENT '配偶姓名',
  `spo_id_type` varchar(2) DEFAULT NULL COMMENT '配偶证件类型 数据字典',
  `spo_id_num` varchar(20) DEFAULT NULL COMMENT '配偶证件号码',
  `spo_tel` varchar(25) DEFAULT NULL COMMENT '配偶联系电话',
  `sps_cmpy_nm` varchar(80) DEFAULT NULL COMMENT '配偶工作单位',
  `sps_info_up_date` date DEFAULT NULL COMMENT '信息更新日期',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人婚姻信息表';

CREATE TABLE `person_other` (
  `id` bigint(20) NOT NULL COMMENT '自增id 主键',
  `record_id` bigint(20) NOT NULL COMMENT '信息id',
  `alias` varchar(30) DEFAULT NULL COMMENT '姓名',
  `oth_id_type` varchar(2) DEFAULT NULL COMMENT '证件类型 数据字典',
  `oth_id_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `id_info_up_date` date DEFAULT NULL COMMENT '信息更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='其他标识表';

CREATE TABLE `person_postal_info` (
  `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
  `mail_addr` varchar(100) DEFAULT NULL COMMENT '通讯地址',
  `mail_pc` varchar(6) DEFAULT NULL COMMENT '通讯地址邮编',
  `mail_dist` int(6) DEFAULT NULL COMMENT '通讯地行政区划 数据字典',
  `mlg_info_up_date` date DEFAULT NULL COMMENT '信息更新日期',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人通讯信息表';

CREATE TABLE `person_profile_info` (
  `record_id` bigint(20) NOT NULL COMMENT '信息id 主键',
  `sex` int(1) DEFAULT NULL COMMENT '性别 数据字典',
  `dob` date DEFAULT NULL COMMENT '出生日期 yyyyMMdd',
  `nation` varchar(3) DEFAULT NULL COMMENT '国籍 数据字典',
  `house_add` varchar(100) DEFAULT NULL COMMENT '户籍地址',
  `hh_dist` int(6) DEFAULT NULL COMMENT '户籍所在地行政区划 数据字典',
  `cell_phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(60) DEFAULT NULL COMMENT '电子邮箱',
  `fcs_info_up_date` date DEFAULT NULL COMMENT '信息更新日期',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人概况信息表';

CREATE TABLE `person_residence_info` (
  `record_id` bigint(20) NOT NULL COMMENT '信息id,主键',
  `resi_status` int(2) DEFAULT NULL COMMENT '居住状况 数据字典',
  `resi_addr` varchar(100) DEFAULT NULL COMMENT '居住地详细地址',
  `resi_pc` varchar(6) DEFAULT NULL COMMENT '居住地邮编',
  `resi_dist` int(6) DEFAULT NULL COMMENT '居住地行政区划 数据字典',
  `home_tel` varchar(25) DEFAULT NULL COMMENT '住宅电话',
  `resi_info_up_date` date DEFAULT NULL COMMENT '信息更新日期',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人居住地址信息表';





















