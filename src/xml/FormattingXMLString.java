package xml;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;
import org.junit.Test;

import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;

/**
 * @author zlb
 * @description:
 * @date 2019/1/8 11:59
 */
public class FormattingXMLString {

    //字符串 XML 格式化处理
    public static void main(String[] args) {
        // TODO Auto-generated method stub
        try {
            String temp = new FormattingXMLString().formatXml("<Head><name>wangjj</name><age>23</age></Head>");
            System.out.println(temp);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static String formatXml(String str) throws Exception {
        Document document = null;
        document = DocumentHelper.parseText(str);
        // 格式化输出格式
        OutputFormat format = OutputFormat.createPrettyPrint();
        format.setEncoding("gb2312");
        StringWriter writer = new StringWriter();
        // 格式化输出流
        XMLWriter xmlWriter = new XMLWriter(writer, format);
        // 将document写入到输出流
        xmlWriter.write(document);
        xmlWriter.close();

        return writer.toString();
    }

    /**
     * @Description: 格式化xml字符串
     * @author zlb
     * @date 2019/1/8 12:23 
     */
    @Test
    public void printXML() throws Exception {
        String xmlString = "<Document><InAcctInf><AcctBsSgmt><InfRecType>210</InfRecType><AcctType>D1</AcctType><AcctCode>1010000001000191010002</AcctCode><RptDate>2016-01-01</RptDate><RptDateCode>10</RptDateCode><Name>毛大力</Name><IDType>10</IDType><IDNum>11010019861111075X</IDNum><MngmtOrgCode>10100000010001</MngmtOrgCode></AcctBsSgmt><AcctBsInfSgmt><BusiLines>1</BusiLines><BusiDtlLines>11</BusiDtlLines><OpenDate>2016-01-01</OpenDate><Cy>CNY</Cy><LoanAmt>1234567</LoanAmt><Flag>1</Flag><DueDate>2036-01-01</DueDate><RepayMode>11</RepayMode><RepayFreqcy>03</RepayFreqcy><RepayPrd>240</RepayPrd><ApplyBusiDist>110102</ApplyBusiDist><GuarMode>1</GuarMode><OthRepyGuarWay>0</OthRepyGuarWay><AssetTrandFlag>0</AssetTrandFlag><FundSou>1</FundSou><LoanForm>1</LoanForm></AcctBsInfSgmt><RltRepymtInfSgmt><RltRepymtNm>3</RltRepymtNm><RltRepymtInf><InfoIDType>1</InfoIDType><ArlpName>茅十八</ArlpName><ArlpCertType>10</ArlpCertType><ArlpCertNum>210782198012268388</ArlpCertNum><ArlpType>2</ArlpType><ArlpAmt>500000</ArlpAmt></RltRepymtInf><RltRepymtInf><InfoIDType>1</InfoIDType><ArlpName>茅十九</ArlpName><ArlpCertType>10</ArlpCertType><ArlpCertNum>411200197610184266</ArlpCertNum><ArlpType>2</ArlpType><ArlpAmt>600000</ArlpAmt></RltRepymtInf><RltRepymtInf><InfoIDType>1</InfoIDType><ArlpName>茅十五</ArlpName><ArlpCertType>10</ArlpCertType><ArlpCertNum>220722198805306503</ArlpCertNum><ArlpType>2</ArlpType><ArlpAmt>100000</ArlpAmt></RltRepymtInf></RltRepymtInfSgmt><MotgaCltalCtrctInfSgmt><CcNm>3</CcNm><CccInf><Ccc>A00000000000011</Ccc></CccInf><CccInf><Ccc>A00000000000012</Ccc></CccInf><CccInf><Ccc>A00000000000013</Ccc></CccInf></MotgaCltalCtrctInfSgmt><AcctCredSgmt><Mcc>B00000000000016</Mcc></AcctCredSgmt><AcctMthlyBlgInfSgmt><Month>2016-01</Month><SettDate></SettDate><AcctStatus>1</AcctStatus><AcctBal>1234567</AcctBal><RemRepPrd>240</RemRepPrd><FiveCate>1</FiveCate><FiveCateAdjDate>2016-01-01</FiveCateAdjDate><RpyStatus>*</RpyStatus><OverdPrd>0</OverdPrd><TotOverd>0</TotOverd><OverdPrinc>0</OverdPrinc><Oved31_60Princ>0</Oved31_60Princ><Oved61_90Princ>0</Oved61_90Princ><Oved91_180Princ>0</Oved91_180Princ><OvedPrinc180>0</OvedPrinc180><CurRpyAmt>0</CurRpyAmt><ActRpyAmt>0</ActRpyAmt><LatRpyDate>2016-01-01</LatRpyDate><CloseDate></CloseDate></AcctMthlyBlgInfSgmt></InAcctInf></Document>";
        FormattingXMLString.formatXML(xmlString);
        System.out.println(xmlString);
    }


    /**
     * @Description: 格式化xml字符串
     * 来源：https://blog.csdn.net/yuebinghaoyuan/article/details/27787251
     * @author zlb
     * @date 2019/1/8 11:59
     */
    public static String formatXML(String inputXML) throws Exception {
        SAXReader reader = new SAXReader();
        Document document = reader.read(new StringReader(inputXML));
        String requestXML = null;
        XMLWriter writer = null;
        if (document != null) {
            try {
                StringWriter stringWriter = new StringWriter();
                OutputFormat format = new OutputFormat(" ", true);
                writer = new XMLWriter(stringWriter, format);
                writer.write(document);
                writer.flush();
                requestXML = stringWriter.getBuffer().toString();
            } finally {
                if (writer != null) {
                    try {
                        writer.close();
                    } catch (IOException e) {
                    }
                }
            }
        }
        System.out.println(requestXML);
        return requestXML;
    }


}
