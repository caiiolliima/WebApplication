using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// PACOTE COM AS CLASSES PARA ENVIAR UM EMAIL
using System.Net.Mail;
using System.Net;

namespace WebApplication2
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            try
            {
                //TENTAR EXECUTAR

                string _nome = NomeUsuario.Text.Trim();
                string _email = EmailUsuario.Text.Trim();
                string _messagem = Mensagem.Text.Trim();

                // 1 - VALIDAR AS ENTRADAS
                if (_nome == "" || _nome.Length < 4)
                {
                    Erro.Text = "Digite Seu Nome com mais de 4 caracteres";
                }
                else if (_email == "")
                {
                    Erro.Text = "Digite seu e-mail";
                }
                else if (_messagem == "")
                {
                    Erro.Text = "Digite sua mensagem";
                }
                else
                {
                    // 2 - MONTAR O E-MAIL System.Net.Mail.MailMessage

                    MailMessage mail = new MailMessage();
                    mail.Subject = "Enviado pelo form de contato";
                    mail.To.Add("contato@seudominio.com.br");
                    MailAddress _from = new MailAddress("contato@seudominio.com.br");
                    mail.From = _from;
                    mail.Body = "DADOS ENVIADOS PELO USUÁRIO\n";
                    mail.Body += "Nome:" + _nome + "\n";
                    mail.Body += "Email:" + _nome + "\n";
                    mail.Body += "Mensagem:" + _nome + "\n";


                    // 3 - ENVIAR O EMAIL ATRAVES DO PROTOCOLO SMTP: System.Net.Mail.SmtpClient
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.seudominio.com.br";
                    smtp.Port = 587;
                    smtp.Credentials = new NetworkCredential("contato@seudominio.com.br", "suasenha");
                    smtp.Send(mail);
                    // FIM
                    mail.Dispose();
                    smtp.Dispose();
                }
            }
            catch (Exception ex)
            {
                //SE HOUVER UMA EXCEÇÃO O CÓDIGO É DESVIADO PARA CÁ

                Erro.Text = ex.Message;

                //Salvar no banco de dados;
                //Enviar um email para o desenvolvedor;

                //Criar o conteúdo a ser registrado no arquivo texto chamado excecoes.txt

                string conteudo = "DATA: " + DateTime.Now.ToString() + "\n";
                conteudo += "MENSAGEM:" + ex.Message + "\n";
                conteudo += "TRACE: " + ex.StackTrace + "\n";
                conteudo += "-----\n";

                //Indica o caminho fiusico do arquivo a ser gravado
                string caminhofisico = HttpContext.Current.Server.MapPath("~/Excecoes/Excecoes.txt");

                //Grava no arquivo
                System.IO.File.AppendAllText(caminhofisico, conteudo);
                //FIM

            }

            
        }
    }
}