using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace prj_36338_redeSocial
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            litUsuario.Text = "u/NomeDoUsuário";
            imgLogo.ImageUrl = "../images/logo.png";

            string usuario = "";

            if (Request["user"] == null)
            {
                Response.Redirect("paginaErro.aspx");
            }
            else
            {
                if (Request["user"].ToString() == "")
                {
                    Response.Redirect("paginaErro.aspx");
                }
            }

            usuario = Request["user"].ToString().ToUpper();

            XmlDocument USUARIOS = new XmlDocument();
            USUARIOS.Load(Request.PhysicalApplicationPath + @"xmls\usuarios.xml");
            XmlNodeList listaUsuarios = USUARIOS.GetElementsByTagName("USUARIO");

            XmlDocument POSTS = new XmlDocument();
            POSTS.Load(Request.PhysicalApplicationPath + @"xmls\posts.xml");
            XmlNodeList listaPosts = POSTS.GetElementsByTagName("POST");

            XmlNode post_user;
            List<XmlNode> posts_user = new List<XmlNode>();
            List<string> infos_user = new List<string>();


            for (int i = 0; i < listaPosts.Count-1; i++)
            {
                if(listaPosts[i]["USER"].InnerText.ToString().ToUpper() == usuario)
                {
                    post_user = listaPosts[i];
                    posts_user.Add(post_user);
                }
            }

            bool flag = false;
            for(int i = 0; i < listaUsuarios.Count-1; i++)
            {
                if (listaUsuarios[i]["USER"].InnerText.ToString().ToUpper() == usuario)
                {
                    infos_user.Add(listaUsuarios[i]["USER"].InnerText);
                    infos_user.Add(listaUsuarios[i]["NOTIFICACOES"].InnerText);
                    infos_user.Add(listaUsuarios[i]["IMAGEMPERFIL"].InnerText);
                    infos_user.Add(listaUsuarios[i]["NICKNAME"].InnerText);
                    infos_user.Add(listaUsuarios[i]["KARMA"].InnerText);
                    infos_user.Add(listaUsuarios[i]["DATA"].InnerText);
                    infos_user.Add(listaUsuarios[i]["FOLLOWERS"].InnerText);
                    infos_user.Add(listaUsuarios[i]["NOME"].InnerText);
                    infos_user.Add(listaUsuarios[i]["IDADE"].InnerText);
                    infos_user.Add(listaUsuarios[i]["MBTI"].InnerText);
                    infos_user.Add(listaUsuarios[i]["PAIXAO"].InnerText);
                    infos_user.Add(listaUsuarios[i]["SANGUE"].InnerText);
                    infos_user.Add(listaUsuarios[i]["SIGNO"].InnerText);
                    infos_user.Add(listaUsuarios[i]["ASCENDENTE"].InnerText);
                    flag = true;
                }
            }

            if(!flag)
            {
                Response.Redirect("paginaErro.aspx");
            }
            
            litNoti.Text = infos_user[1];
            imgProfile.ImageUrl = infos_user[2];
            litUsuario.Text = infos_user[3];
            litUsuarioProfile.Text = infos_user[3];
            litKarma.Text = infos_user[4];
            litData.Text = infos_user[5];
            litFollowers.Text = infos_user[6];
            litNome.Text = infos_user[7];
            litIdade.Text = infos_user[8];
            litMBTI.Text = infos_user[9];
            litPaixao.Text = infos_user[10];
            litSangue.Text = infos_user[11];
            litSigno.Text = infos_user[12];
            litAscendente.Text = infos_user[13];

            for (int i = 0; i <= posts_user.Count-1; i++)
            {
                string conteudo_post = "";
                
                if (posts_user[i]["CONTEUDO"].InnerText.Substring(0,10) == "../images/")
                {
                    conteudo_post = $"<div class='imgPosts'><img src='{posts_user[i]["CONTEUDO"].InnerText}' ID='imgPost1' style='width:80%;'></div>";
                }
                else
                {
                    conteudo_post = $"<p>{posts_user[i]["CONTEUDO"].InnerText}</p>";
                }

                litTodosOsPosts.Text += "" +
                "<div class='post'>" +
                    "<div class='like-dislike'>" +
                    "    <span class='material-symbols-outlined'>arrow_upward</span>" +
                    $"    <p class='p-like'><strong>{posts_user[i]["LIKES"].InnerText}</strong></p>" +
                    "    <span class='material-symbols-outlined'>arrow_downward</span>" +
                    "</div>" +
                    "<div class='conteudoPosts'>" +
                        $"<h2>{posts_user[i]["TITULO"].InnerText}</h2>" +
                        $"{conteudo_post}" +
                    "</div>" +
                "</div>";

                //litH2post1.Text = listaPosts[8]["TITULO"].InnerText;
                //imgPost1.ImageUrl = listaPosts[8]["CONTEUDO"].InnerText;
                //litLikes1.Text = listaPosts[8]["LIKES"].InnerText;

                //litH2post2.Text = listaPosts[9]["TITULO"].InnerText;
                //imgPost2.ImageUrl = listaPosts[9]["CONTEUDO"].InnerText;
                //litLikes2.Text = listaPosts[9]["LIKES"].InnerText;

                //litH2post3.Text = listaPosts[10]["TITULO"].InnerText;
                //lblPost3.Text = listaPosts[10]["CONTEUDO"].InnerText;
                //litLikes3.Text = listaPosts[10]["LIKES"].InnerText;

                //litH2post4.Text = listaPosts[11]["TITULO"].InnerText;
                //imgPost4.ImageUrl = listaPosts[11]["CONTEUDO"].InnerText;
                //litLikes4.Text = listaPosts[11]["LIKES"].InnerText;
            }
        }
    }
}