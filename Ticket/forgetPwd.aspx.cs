using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.Text;
using System.Data.SqlClient;
using System.Threading;
namespace Ticket
{
    public partial class forgetPwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public string createRadom()
        {
            string rnd = "";
            Random r = new Random();
            for (int i = 0; i < 4; i++)
            {
                switch(r.Next(1, 27))
                {
                    case 1:
                        rnd += "A";
                        break;
                    case 2:
                        rnd += "B";
                        break;
                    case 3:
                        rnd += "C";
                        break;
                    case 4:
                        rnd += "D";
                        break;
                    case 5:
                        rnd += "E";
                        break;
                    case 6:
                        rnd += "F";
                        break;
                    case 7:
                        rnd += "G";
                        break;
                    case 8:
                        rnd += "H";
                        break;
                    case 9:
                        rnd += "I";
                        break;
                    case 10:
                        rnd += "J";
                        break;
                    case 11:
                        rnd += "K";
                        break;
                    case 12:
                        rnd += "L";
                        break;
                    case 13:
                        rnd += "M";
                        break;
                    case 14:
                        rnd += "N";
                        break;
                    case 15:
                        rnd += "O";
                        break;
                    case 16:
                        rnd += "P";
                        break;
                    case 17:
                        rnd += "Q";
                        break;
                    case 18:
                        rnd += "R";
                        break;
                    case 19:
                        rnd += "S";
                        break;
                    case 20:
                        rnd += "T";
                        break;
                    case 21:
                        rnd += "U";
                        break;
                    case 22:
                        rnd += "W";
                        break;
                    case 23:
                        rnd += "X";
                        break;
                    case 24:
                        rnd += "Y";
                        break;
                    case 25:
                        rnd += "Z";
                        break;
                    case 26:
                        rnd += "V";
                        break;
                }
            }
            return rnd;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            /*
            try
            {
                SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TicketConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select eMail from HuiYuan where HuiYuanHao = '" + TextBox2.Text + "'", cnn);
                cnn.Open();
                string mail = (string)cmd.ExecuteScalar();
                Session["kaptcha"] = createRadom();//生成验证码
                                        //设置用户信息
                string smtpServer = "smtp.qq.com"; //SMTP服务器
                string mailFrom = "2049192198@qq.com"; //登陆用户名
                string userPassword = "ylzsxhwwhmgubijg";//登陆密码
                                                         // 邮件服务设置
                SmtpClient smtpClient = new SmtpClient();
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;//指定电子邮件发送方式
                smtpClient.Host = smtpServer; //指定SMTP服务器
                smtpClient.Credentials = new System.Net.NetworkCredential(mailFrom, userPassword);//用户名和密码
                                                                                                  // 发送邮件设置       
                MailMessage mailMessage = new MailMessage(mailFrom, mail.Trim()); // 发送人和收件人
                mailMessage.Subject = "邮箱验证码";//主题
                mailMessage.Body = "【网上订票系统】您的账号邮箱验证码为：" + Session["kaptcha"] + "，请勿将账号信息透露给他人，确保您的账号安全。此邮件信息为网上订票系统邮箱验证发送申请，若不是您在使用，请忽视。";//内容
                mailMessage.BodyEncoding = Encoding.UTF8;//正文编码
                mailMessage.IsBodyHtml = true;//设置为HTML格式
                mailMessage.Priority = MailPriority.Low;//优先级
                smtpClient.Send(mailMessage); // 发送邮件

                Session["UserInfo"] = TextBox2.Text;
            }
            catch (SmtpException ex)
            {
                Response.Write(ex.Message.TrimEnd());
            }
            catch (SqlException ex)
            {
                Response.Write("数据库查询失败" + ex.Message);
            }*/
            try
            {
                Session["kaptcha"] = createRadom();//生成验证码
                SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TicketConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select eMail from HuiYuan where HuiYuanHao = '" + TextBox2.Text + "'", cnn);
                cnn.Open();
                string mail = (string)cmd.ExecuteScalar();
                cnn.Close();
                MailMessage mmsg = new MailMessage();
                //邮件主题
                mmsg.Subject = "邮箱验证码";
                mmsg.BodyFormat = MailFormat.Html;
                //邮件正文
                mmsg.Body = "【网上订票系统】您的账号邮箱验证码为：" + Session["kaptcha"] + "，请勿将账号信息透露给他人，确保您的账号安全。此邮件信息为网上订票系统邮箱验证发送申请，若不是您在使用，请忽视。";
                //正文编码
                mmsg.BodyEncoding = Encoding.UTF8;
                //优先级
                mmsg.Priority = MailPriority.Normal;
                //发件者邮箱地址
                mmsg.From = "2049192198@qq.com";
                //收件人收箱地址
                mmsg.To = mail;

                mmsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", "1");
                //用户名
                mmsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "2049192198");
                //密码
                mmsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "ylzsxhwwhmgubijg");
                //端口 
                mmsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", 465);
                //是否ssl
                mmsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", "true");
                //Smtp服务器
                System.Web.Mail.SmtpMail.SmtpServer = "smtp.qq.com";

                SmtpMail.Send(mmsg);
                Response.Write("发送成功");
            }
            catch (Exception ex)
            {
                Response.Write("发送失败，失败原因：" + ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == Session["kaptcha"].ToString())
            {
                Response.Redirect("./newPwd.aspx");
            }
            else
            {
                Response.Write("<script>alert(\"验证码错误!\");</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("./index.aspx");
        }
    }
}