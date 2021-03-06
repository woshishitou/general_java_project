INSERT INTO mg_dictionary(dict_code, dict_name, dict_value, dict_desc, enable_disable,create_user, create_time)
VALUES('acct_type', '账户类型', 'D1', '非循环贷账户', 1, 'zlb', '2019-03-05 10:00:00');

INSERT INTO mg_dictionary(dict_code, dict_name, dict_value, dict_desc, enable_disable,create_user, create_time)
VALUES(

, 1, 'zlb', '2019-03-05 10:00:00');

'inf_rec_type', '信息记录类型', '210', '个人借贷账户信息记录'
'inf_rec_type', '信息记录类型', '211', '个人借贷账户标识变更请求记录'
'inf_rec_type', '信息记录类型', '212', '个人借贷账户按段更正请求记录'
'inf_rec_type', '信息记录类型', '213', '个人借贷账户按段删除请求记录'
'inf_rec_type', '信息记录类型', '214', '个人借贷账户整笔删除请求记录'
'inf_rec_type', '信息记录类型', '215', '个人借贷账户特殊事件说明记录'
'inf_rec_type', '信息记录类型', '220', '个人授信协议信息记录'
'inf_rec_type', '信息记录类型', '221', '个人授信协议标识变更请求记录'
'inf_rec_type', '信息记录类型', '222', '个人授信协议按段更正请求记录'
'inf_rec_type', '信息记录类型', '223', '个人授信协议按段删除请求记录'
'inf_rec_type', '信息记录类型', '224', '个人授信协议整笔删除请求记录'


'acct_type', '账户类型', 'D1', '非循环贷账户'
'acct_type', '账户类型', 'R1', '循环贷账户'
'acct_type', '账户类型', 'R2', '贷记卡账户'
'acct_type', '账户类型', 'R3', '准贷记卡账户'
'acct_type', '账户类型', 'R4', '循环额度下分账户'
'acct_type', '账户类型', 'C1', '催收账户'


'rpt_date_code', '报告时点说明代码', '10', '新开户'
'rpt_date_code', '报告时点说明代码', '20', '账户关闭'
'rpt_date_code', '报告时点说明代码', '30', '月度结算'
'rpt_date_code', '报告时点说明代码', '31', '月结日首次上报存量账户'
'rpt_date_code', '报告时点说明代码', '32', '月结日账户关闭'
'rpt_date_code', '报告时点说明代码', '40', '收回逾期款项'


'id_type', '个人证件类型', '1', '户口簿'
'id_type', '个人证件类型', '2', '护照'
'id_type', '个人证件类型', '5', '港澳居民来往内地通行证'
'id_type', '个人证件类型', '6', '台湾同胞来往内地通行证'
'id_type', '个人证件类型', '8', '外国人居留证'
'id_type', '个人证件类型', '9', '警官证'
'id_type', '个人证件类型', 'A', '香港身份证'
'id_type', '个人证件类型', 'B', '澳门身份证'
'id_type', '个人证件类型', 'C', '台湾身份证'
'id_type', '个人证件类型', 'X', '其他证件'
'id_type', '个人证件类型', '10', '居民身份证及其他以公民身份证号为标识的证'
'id_type', '个人证件类型', '20', '军人身份证件'


'busi_lines', '借贷业务大类', '1', '贷款'
'busi_lines', '借贷业务大类', '2', '信用卡'
'busi_lines', '借贷业务大类', '3', '证券类融资'
'busi_lines', '借贷业务大类', '4', '融资租赁'
'busi_lines', '借贷业务大类', '5', '资产处置'
'busi_lines', '借贷业务大类', '6', '垫款'


'business_detail_lines', '借贷业务种类细分', '11', '个人住房商业贷款'
'business_detail_lines', '借贷业务种类细分', '12', '个人商用房（含商住两用）贷款'
'business_detail_lines', '借贷业务种类细分', '13', '个人住房公积金贷款'
'business_detail_lines', '借贷业务种类细分', '21', '个人汽车消费贷款'
'business_detail_lines', '借贷业务种类细分', '31', '个人助学贷款'
'business_detail_lines', '借贷业务种类细分', '32', '国家助学贷款'
'business_detail_lines', '借贷业务种类细分', '33', '商业助学贷款'
'business_detail_lines', '借贷业务种类细分', '41', '个人经营性贷款'
'business_detail_lines', '借贷业务种类细分', '51', '农户贷款'
'business_detail_lines', '借贷业务种类细分', '52', '经营性农户贷款'
'business_detail_lines', '借贷业务种类细分', '53', '消费性农户贷款'
'business_detail_lines', '借贷业务种类细分', '91', '其他个人消费贷款'
'business_detail_lines', '借贷业务种类细分', '99', '其他贷款'
'business_detail_lines', '借贷业务种类细分', '71', '准贷记卡'
'business_detail_lines', '借贷业务种类细分', '81', '贷记卡'
'business_detail_lines', '借贷业务种类细分', '82', '大额专项分期卡（专指仅用于大额专项分期的贷记卡）'
'business_detail_lines', '借贷业务种类细分', '61', '约定购回式证券交易'
'business_detail_lines', '借贷业务种类细分', '62', '股票质押式回购交易'
'business_detail_lines', '借贷业务种类细分', '63', '融资融券业务'
'business_detail_lines', '借贷业务种类细分', '64', '其他证券类融资'
'business_detail_lines', '借贷业务种类细分', '92', '融资租赁业务'
'business_detail_lines', '借贷业务种类细分', 'A1', '由资产处置机构处置的债务'
'business_detail_lines', '借贷业务种类细分', 'B1', '因代偿继承债权的债务'



'cy', '币种', 'ADP', '安道尔比赛塔'
'cy', '币种', 'AED', '阿联酋UAE迪拉姆'
'cy', '币种', 'AFA', '阿富汗尼'
'cy', '币种', 'ALL', '阿尔巴尼亚列克'
'cy', '币种', 'AMD', '亚美尼亚达姆'
'cy', '币种', 'ANG', '荷属安的列斯盾'
'cy', '币种', 'AOA', '安哥拉宽扎'
'cy', '币种', 'AON', '安哥拉新克瓦查'
'cy', '币种', 'ARS', '阿根廷比索'
'cy', '币种', 'ASF', '记账瑞士法郎'
'cy', '币种', 'ATS', '奥地利先令'
'cy', '币种', 'AUD', '澳大利亚元'
'cy', '币种', 'AWG', '阿鲁巴盾'
'cy', '币种', 'AZM', '阿塞拜疆马纳特'
'cy', '币种', 'BAM', '可自由兑换标记'
'cy', '币种', 'BBD', '巴巴多斯元'
'cy', '币种', 'BDT', '孟加拉国塔卡'
'cy', '币种', 'BEF', '比利时法郎'
'cy', '币种', 'BGL', '保加利亚列弗'
'cy', '币种', 'BGN', '保加利亚列弗'
'cy', '币种', 'BHD', '巴林第纳尔'
'cy', '币种', 'BIF', '布隆迪法郎'
'cy', '币种', 'BMD', '百慕大元'
'cy', '币种', 'BND', '文莱元'
'cy', '币种', 'BOB', '玻利维亚比索'
'cy', '币种', 'BOV', 'Mvdol'
'cy', '币种', 'BRL', '巴西瑞尔'
'cy', '币种', 'BSD', '巴哈马元'
'cy', '币种', 'BTN', '不丹努尔特鲁姆'
'cy', '币种', 'BWP', '博茨瓦纳普拉'
'cy', '币种', 'BYB', '白俄罗斯卢布'
'cy', '币种', 'BYR', '白俄罗斯卢布'
'cy', '币种', 'BZD', '伯利兹元'
'cy', '币种', 'CAD', '加元'
'cy', '币种', 'CDF', '刚果法郎'
'cy', '币种', 'CHF', '瑞士法郎'
'cy', '币种', 'CLF', '发展单位'
'cy', '币种', 'CLP', '智利比索'
'cy', '币种', 'CNY', '人民币元'
'cy', '币种', 'COP', '哥伦比亚比索'
'cy', '币种', 'CRC', '哥斯达黎加科郎'
'cy', '币种', 'CUP', '古巴比索'
'cy', '币种', 'CVE', '佛得角埃斯库多'
'cy', '币种', 'CYP', '塞浦路斯镑'
'cy', '币种', 'CZK', '捷克克郎'
'cy', '币种', 'DEM', '德国马克'
'cy', '币种', 'DJF', '吉布提法郎'
'cy', '币种', 'DKK', '丹麦克朗'
'cy', '币种', 'DOP', '多米尼加比索'
'cy', '币种', 'DZD', '阿尔及利亚第纳尔'
'cy', '币种', 'ECS', '厄瓜多尔苏克雷'
'cy', '币种', 'ECV', 'UVC'
'cy', '币种', 'EEK', '克罗姆'
'cy', '币种', 'EGP', '埃及镑'
'cy', '币种', 'ERN', '厄立特里亚纳克法'
'cy', '币种', 'ESP', '西班牙比塞塔'
'cy', '币种', 'ETB', '埃塞俄比亚比尔'
'cy', '币种', 'EUR', '欧元'
'cy', '币种', 'FIM', '芬兰马克'
'cy', '币种', 'FJD', '斐济元'
'cy', '币种', 'FKP', '福克兰群岛镑'
'cy', '币种', 'FRF', '法国法郎'
'cy', '币种', 'GBP', '英镑'
'cy', '币种', 'GEL', '格鲁吉亚拉里'
'cy', '币种', 'GHC', '加纳塞地'
'cy', '币种', 'GIP', '直布罗陀镑'
'cy', '币种', 'GMD', '冈比亚达拉西'
'cy', '币种', 'GNF', '几内亚法郎'
'cy', '币种', 'GRD', '希腊德拉克马'
'cy', '币种', 'GTQ', '危地马拉格查尔'
'cy', '币种', 'GWP', '几内亚比绍比索'
'cy', '币种', 'GYD', '圭亚那元'
'cy', '币种', 'HKD', '香港元'
'cy', '币种', 'HNL', '洪都拉斯伦皮拉'
'cy', '币种', 'HRK', '克罗地亚库纳'
'cy', '币种', 'HTG', '海地古德'
'cy', '币种', 'HUF', '匈牙利福林'
'cy', '币种', 'IDR', '印度尼西亚卢比'
'cy', '币种', 'IEP', '爱尔兰镑'
'cy', '币种', 'ILS', '以色列锡克尔'
'cy', '币种', 'INR', '印度卢比'
'cy', '币种', 'IQD', '伊拉克第纳尔'
'cy', '币种', 'IRR', '伊朗里亚尔'
'cy', '币种', 'ISK', '冰岛克郎'
'cy', '币种', 'ITL', '意大利里拉'
'cy', '币种', 'JMD', '牙买加元'
'cy', '币种', 'JOD', '约旦第纳尔'
'cy', '币种', 'JPY', '日元'
'cy', '币种', 'KES', '肯尼亚先令'
'cy', '币种', 'KGS', '吉尔吉斯斯坦索姆'
'cy', '币种', 'KHR', '柬埔寨瑞尔'
'cy', '币种', 'KMF', '科摩罗法郎'
'cy', '币种', 'KPW', '北朝鲜圆'
'cy', '币种', 'KRW', '韩国圆'
'cy', '币种', 'KWD', '科威特第纳尔'
'cy', '币种', 'KYD', '开曼群岛元'
'cy', '币种', 'KZT', '哈萨克斯坦坚戈'
'cy', '币种', 'LAK', '老挝基普'
'cy', '币种', 'LBP', '黎巴嫩镑'
'cy', '币种', 'LKR', '斯里兰卡卢比'
'cy', '币种', 'LRD', '利比里亚元'
'cy', '币种', 'LSL', '莱索托罗提'
'cy', '币种', 'LTL', '立陶宛'
'cy', '币种', 'LUF', '卢森堡法郎'
'cy', '币种', 'LVL', '拉脱维亚拉特'
'cy', '币种', 'LYD', '利比亚第纳尔'
'cy', '币种', 'MAD', '摩洛哥迪拉姆'
'cy', '币种', 'MDL', '摩尔瓦多列伊'
'cy', '币种', 'MGF', '马尔加什法郎'
'cy', '币种', 'MKD', '马其顿第纳尔'
'cy', '币种', 'MMK', '缅元'
'cy', '币种', 'MNT', '蒙古图格里克'
'cy', '币种', 'MOP', '澳门元'
'cy', '币种', 'MRO', '毛里塔尼亚乌吉亚'
'cy', '币种', 'MTL', '马尔他里拉'
'cy', '币种', 'MUR', '毛里求斯卢比'
'cy', '币种', 'MVR', '马尔代夫卢菲亚'
'cy', '币种', 'MWK', '马拉维克瓦查'
'cy', '币种', 'MXN', '墨西哥比索'
'cy', '币种', 'MXV', '墨西哥发展单位'
'cy', '币种', 'MYR', '马来西亚林吉特'
'cy', '币种', 'MZM', '莫桑比克麦梯卡尔'
'cy', '币种', 'NAD', '纳米比亚元'
'cy', '币种', 'NGN', '尼日利亚奈拉'
'cy', '币种', 'NIO', '尼加拉瓜金科多巴'
'cy', '币种', 'NLG', '荷兰盾'
'cy', '币种', 'NOK', '挪威克朗'
'cy', '币种', 'NPR', '尼泊尔卢比'
'cy', '币种', 'NZD', '新西兰元'
'cy', '币种', 'OMR', '阿曼里亚尔'
'cy', '币种', 'PAB', '巴拿马巴波亚'
'cy', '币种', 'PEN', '秘鲁索尔'
'cy', '币种', 'PGK', '巴布亚新几内亚基那'
'cy', '币种', 'PHP', '菲律宾比索'
'cy', '币种', 'PKR', '巴基斯坦卢比'
'cy', '币种', 'PLN', '波兰兹罗提'
'cy', '币种', 'PLZ', '波兰兹罗提'
'cy', '币种', 'PTE', '葡萄牙埃斯库多'
'cy', '币种', 'PYG', '巴拉圭瓜拉尼'
'cy', '币种', 'QAR', '卡塔尔里亚尔'
'cy', '币种', 'ROL', '罗马尼亚列伊'
'cy', '币种', 'RSD', '塞尔维亚第纳尔'
'cy', '币种', 'RUB', '俄罗斯卢布'
'cy', '币种', 'RWF', '卢旺达法郎'
'cy', '币种', 'SAR', '沙特里亚尔'
'cy', '币种', 'SBD', '所罗门群岛元'
'cy', '币种', 'SCR', '塞舌尔卢比'
'cy', '币种', 'SDD', '苏丹第纳尔'
'cy', '币种', 'SDP', '苏丹镑'
'cy', '币种', 'SDR', '特别提款权（停用）'
'cy', '币种', 'SEK', '瑞典克郎'
'cy', '币种', 'SGD', '新加坡元'
'cy', '币种', 'SHP', '圣赫勒拿镑'
'cy', '币种', 'SIT', '斯洛文尼亚托拉尔'
'cy', '币种', 'SKK', '斯洛伐克克郎'
'cy', '币种', 'SLL', '塞拉利昂利昂'
'cy', '币种', 'SOS', '索马里先令'
'cy', '币种', 'SRG', '苏里南盾'
'cy', '币种', 'STD', '圣多美和普林西比多布拉'
'cy', '币种', 'SVC', '萨尔瓦多科郎'
'cy', '币种', 'SYP', '叙利亚镑'
'cy', '币种', 'SZL', '斯威士兰里兰吉尼'
'cy', '币种', 'THB', '泰国铢'
'cy', '币种', 'TJR', '塔吉克卢布'
'cy', '币种', 'TJS', '塔吉克斯坦索莫尼'
'cy', '币种', 'TMM', '土库曼斯坦马纳特'
'cy', '币种', 'TND', '突尼斯第纳尔'
'cy', '币种', 'TOP', '汤加邦加'
'cy', '币种', 'TPE', '东帝汶埃斯库多'
'cy', '币种', 'TRL', '土耳其里拉'
'cy', '币种', 'TTD', '特立尼达和多巴哥元'
'cy', '币种', 'TWD', '新台湾元'
'cy', '币种', 'TZS', '坦桑尼亚先令'
'cy', '币种', 'UAH', '乌克兰格里夫纳'
'cy', '币种', 'UAK', '乌克兰库邦'
'cy', '币种', 'UGX', '乌干达先令'
'cy', '币种', 'USD', '美元'
'cy', '币种', 'USN', '美元次日'
'cy', '币种', 'USS', '美元同日'
'cy', '币种', 'UYU', '乌拉圭比索'
'cy', '币种', 'UZS', '乌兹别克斯坦苏姆'
'cy', '币种', 'VEB', '委内瑞拉博利瓦'
'cy', '币种', 'VND', '越南盾'
'cy', '币种', 'VUV', '瓦努阿图瓦图'
'cy', '币种', 'WST', '萨摩亚塔拉'
'cy', '币种', 'XAF', 'CFA法郎BEAC'
'cy', '币种', 'XAG', '银'
'cy', '币种', 'XAU', '黄金'
'cy', '币种', 'XBA', '欧洲混合单位（EURCO）'
'cy', '币种', 'XBB', '欧洲货币单位（EMU.-6）'
'cy', '币种', 'XBC', '欧洲帐户9单位（E.U.A.-9）'
'cy', '币种', 'XBD', '欧洲帐户17单位（E.U.A.-17）'
'cy', '币种', 'XCD', '东加勒比元'
'cy', '币种', 'XDR', '特别提款权'
'cy', '币种', 'XEU', '欧洲货币单位（E.C.U.）'
'cy', '币种', 'XFO', '黄金法郎'
'cy', '币种', 'XFU', 'UIC法郎'
'cy', '币种', 'XOF', 'CFA法郎BCEAO'
'cy', '币种', 'XPD', '钯'
'cy', '币种', 'XPF', 'CFP法郎'
'cy', '币种', 'XPT', '铂白金'
'cy', '币种', 'XTS', '记帐美元'
'cy', '币种', 'XXX', '未包括的交易货币代码指定为：'
'cy', '币种', 'YER', '也门里亚尔'
'cy', '币种', 'YUM', '南斯拉夫第纳尔'
'cy', '币种', 'YUN', '南斯拉夫第纳尔'
'cy', '币种', 'ZAL', '（金融兰特）'
'cy', '币种', 'ZAR', '兰特'
'cy', '币种', 'ZMK', '赞比亚克瓦查'
'cy', '币种', 'ZRN', '新扎伊尔'
'cy', '币种', 'ZWD', '津巴布韦元'


'flag', '分次放款标志', '0', '贷款额度一次性发放'
'flag', '分次放款标志', '1', '贷款额度分次发放，且每笔放款对应一个独立的 D1 账户报送'
'flag', '分次放款标志', '2', '贷款额度分次发放，且所有放款使用统一的 D1 账户合并报送'


'repay_mode', '还款方式', '11', '分期等额本息'
'repay_mode', '还款方式', '12', '分期等额本金'
'repay_mode', '还款方式', '13', '到期还本分期结息'
'repay_mode', '还款方式', '14', '等比累进分期还款'
'repay_mode', '还款方式', '15', '等额累进分期还款'
'repay_mode', '还款方式', '19', '其他类型分期还款'
'repay_mode', '还款方式', '21', '到期一次还本付息'
'repay_mode', '还款方式', '22', '预先付息到期还本'
'repay_mode', '还款方式', '23', '随时还'
'repay_mode', '还款方式', '29', '其他类型非分期还款'
'repay_mode', '还款方式', '31', '按期结息，到期还本'
'repay_mode', '还款方式', '32', '按期结息，自由还本'
'repay_mode', '还款方式', '33', '按期计算还本付息'
'repay_mode', '还款方式', '39', '循环贷款下其他还款方式'
'repay_mode', '还款方式', '90', '汇总报送，不区分还款方式'


'repay_freqcy', '还款频率', '01', '日'
'repay_freqcy', '还款频率', '02', '周'
'repay_freqcy', '还款频率', '03', '月'
'repay_freqcy', '还款频率', '04', '季'
'repay_freqcy', '还款频率', '05', '半年'
'repay_freqcy', '还款频率', '06', '年'
'repay_freqcy', '还款频率', '07', '一次性'
'repay_freqcy', '还款频率', '08', '不定期  还款日之间的时间间隔不是固定周期。'
'repay_freqcy', '还款频率', '12', '旬'
'repay_freqcy', '还款频率', '13', '双周'
'repay_freqcy', '还款频率', '14', '双月'
'repay_freqcy', '还款频率', '99', '其他'


'guar_mode', '担保方式', '1', '质押'
'guar_mode', '担保方式', '2', '抵押'
'guar_mode', '担保方式', '3', '保证'
'guar_mode', '担保方式', '4', '信用/免担保'
'guar_mode', '担保方式', '5', '组合(含保证)'
'guar_mode', '担保方式', '6', '组合（不含保证）'
'guar_mode', '担保方式', '7', '农户联保'


'oth_repy_guar_way', '其他还款保证方式', '0', '无'
'oth_repy_guar_way', '其他还款保证方式', '1', '保证金'
'oth_repy_guar_way', '其他还款保证方式', '9', '其他'


'asset_trand_flag', '资产转让标志', '0', '未转让'
'asset_trand_flag', '资产转让标志', '1', '转让'


'fund_sou', '业务经营类型', '1', '自营'
'fund_sou', '业务经营类型', '2', '委托'
'fund_sou', '业务经营类型', '21', '政府部门委托'
'fund_sou', '业务经营类型', '22', '企事业单位委托'
'fund_sou', '业务经营类型', '23', '个人委托'
'fund_sou', '业务经营类型', '24', '公积金管理中心的委托'
'fund_sou', '业务经营类型', '4', '信托'
'fund_sou', '业务经营类型', '8', '联合'


'loan_form', '贷款发放形式', '9', '新增'
'loan_form', '贷款发放形式', '9', '其他机构转入'
'loan_form', '贷款发放形式', '9', '其他'


'info_id_type', '身份类别', '1', '自然人'
'info_id_type', '身份类别', '2', '组织机构'


'arlp_cert_type', '责任人身份标识类型', '10', '中征码（原贷款卡编码）'
'arlp_cert_type', '责任人身份标识类型', '20', '统一社会信用代码'
'arlp_cert_type', '责任人身份标识类型', '30', '组织机构代码'


'arlp_type', '还款责任人类型', '1', '共同借款人'
'arlp_type', '还款责任人类型', '2', '保证人'
'arlp_type', '还款责任人类型', '9', '其他'


'warty_sign', '联保标志', '0', '单人保证/多人分保'
'warty_sign', '联保标志', '1', '联保'



'acct_status_d1_r4', '账户状态', '1', '正常'
'acct_status_d1_r4', '账户状态', '2', '逾期'
'acct_status_d1_r4', '账户状态', '3', '关闭'
'acct_status_d1_r4', '账户状态', '41', '呆账（进入核销认定程序，等待核销）'
'acct_status_d1_r4', '账户状态', '42', '呆账（已核销）'
'acct_status_d1_r4', '账户状态', '6', '担保物不足'
'acct_status_d1_r4', '账户状态', '8', '司法追偿'


'acct_status_r1', '账户状态', '1', '正常'
'acct_status_r1', '账户状态', '2', '逾期'
'acct_status_r1', '账户状态', '3', '关闭  包括但不限于额度到期且贷款结清'
'acct_status_r1', '账户状态', '41', '呆账（进入核销认定程序，等待核销）'
'acct_status_r1', '账户状态', '42', '呆账（已核销）'
'acct_status_r1', '账户状态', '5', '银行止付'
'acct_status_r1', '账户状态', '6', '担保物不足'
'acct_status_r1', '账户状态', '8', '司法追偿'


'acct_status_r2_r3', '账户状态', '1', '正常'
'acct_status_r2_r3', '账户状态', '31', '银行止付'
'acct_status_r2_r3', '账户状态', '4', '销户'
'acct_status_r2_r3', '账户状态', '51', '呆账（进入核销认定程序，等待核销）'
'acct_status_r2_r3', '账户状态', '52', '呆账（已核销）'
'acct_status_r2_r3', '账户状态', '6', '未激活'
'acct_status_r2_r3', '账户状态', '8', '司法追偿'


'acct_status_c1', '账户状态', '1', '催收'
'acct_status_c1', '账户状态', '2', '结束'


'five_cate', '五级分类', '1', '正常'
'five_cate', '五级分类', '2', '关注'
'five_cate', '五级分类', '3', '次级'
'five_cate', '五级分类', '4', '可疑'
'five_cate', '五级分类', '5', '损失'
'five_cate', '五级分类', '9', '未分类'


接下来 各种账户的还款状态














