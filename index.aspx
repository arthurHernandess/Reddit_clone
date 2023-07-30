<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="prj_36338_redeSocial.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width"/>
<link href="css/Estilo.css" rel="stylesheet" />
<link href="css/EstiloMobile.css" rel="stylesheet" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="preconnect" href="https://fonts.gstatic.com"/>
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet"/>
    <title>Reddit</title>
    <link href="https://www.redditstatic.com/desktop2x/img/favicon/favicon-96x96.png" rel="icon" sizes="96x96" type="image/png"/>
</head>
<body>
    <form id="frm_redeSocial" runat="server">
        <header id="header">
            <div class="menuSection">
                <div id="divLogo"><a href="index.aspx"><asp:Image ID="imgLogo" AlternateText="Logo" runat="server" /></a></div>
                <div id="menu-toogle">
                    <div class="um"></div>
                    <div class="dois"></div>
                    <div class="tres"></div>
                </div>

                <div id="ComuPesqui">
                    <div id="divComunidades"><button class="button"><strong>Profile</strong><span class="material-symbols-outlined">keyboard_arrow_down</span></button></div>
                    <div id="divPesquisa"><span class="material-symbols-outlined">search</span><asp:TextBox ID="txtPesquisa" runat="server" placeholder="Search for comunities, users, etc..."></asp:TextBox></div>
                </div>
            
                <div id="mobileDeitado">
                <nav id="navIcones">
                    <ul id="icons-header">
                        <li class="icons"><span class="material-symbols-outlined">data_exploration</span></li>
                        <li class="icons"><span class="material-symbols-outlined">signal_cellular_alt</span></li>
                        <li class="icons"><span class="material-symbols-outlined">videocam</span></li>
                        <li class="icons"><span class="material-symbols-outlined">chat</span></li>
                        <li class="icons" style="display: flex;"><span class="material-symbols-outlined">notifications</span><p id="p-litNoti"><asp:Literal ID="litNoti" runat="server"></asp:Literal></p></li>
                        <li class="icons"><span class="material-symbols-outlined">add</span></li>
                    </ul>
                </nav>

                <div id="divUsuario">
                    <button class="button"><asp:Literal ID="litUsuario" runat="server"></asp:Literal><span class="material-symbols-outlined">keyboard_arrow_down</span></button>
                </div>
                </div>
            </div>
        </header>

        <section>
          <div id="DF-posts-profile">
                <div id="Posts">
                    <div id="divPost">
                    <span class="material-symbols-outlined">account_circle</span>
                    <asp:TextBox ID="txtPost" runat="server" placeholder="Create Post"></asp:TextBox>
                    <span class="material-symbols-outlined">photo_library</span>
                    <span class="material-symbols-outlined">add_link</span>
                </div>

            <asp:Literal ID="litTodosOsPosts" runat="server"></asp:Literal>

          </div>
            <div id="profile">
                <div>
                    <div id="profilePicture" style="display:flex; align-items: flex-end; margin-bottom: 20px;">
                        <asp:Image ID="imgProfile" runat="server"/>
                        <span class="material-symbols-outlined" id="addPicture">add_a_photo</span>
                    </div>
                        <a><asp:Literal ID="litUsuarioProfile" runat="server"></asp:Literal></a>
                </div>
                <button id="btnCreateAvatar"><strong>Create Avatar</strong></button>

                <button id="btnSaibaMais"><strong>Saiba Mais<span class="material-symbols-outlined">keyboard_arrow_down</span></strong></button>

                <div class="DFinfos off">
                    <p class="p-profile">Karma</p><i><asp:Literal ID="litKarma" runat="server"></asp:Literal></i>
                    <p class="p-profile">Cake Day</p><i><asp:Literal ID="litData" runat="server"></asp:Literal></i>
                    <p class="p-profile">Followers</p><i><asp:Literal ID="litFollowers" runat="server"></asp:Literal></i>
                </div>


                <div class="DFTable off">
                    <table>
                        <tr>
                            <th>Nome:</th>
                            <td style="text-align:right;"><asp:Literal ID="litNome" runat="server"></asp:Literal></td>
                        </tr>

                        <tr>
                            <th>Idade:</th>
                            <td style="text-align:right;"><asp:Literal ID="litIdade" runat="server"></asp:Literal></td>
                        </tr>

                        <tr>
                            <th>Uma paixão:</th>
                            <td style="text-align:right;"><asp:Literal ID="litPaixao" runat="server"></asp:Literal></td>
                        </tr>

                        <tr>
                            <th>MBTI:</th>
                            <td style="text-align:right;"><asp:Literal ID="litMBTI" runat="server"></asp:Literal></td>
                        </tr>

                        <tr>
                            <th>Tipo sanguíneo:</th>
                            <td style="text-align:right;"><asp:Literal ID="litSangue" runat="server"></asp:Literal></td>
                        </tr>

                        <tr>
                            <th>Signo:</th>
                            <td style="text-align:right;"><asp:Literal ID="litSigno" runat="server"></asp:Literal></td>
                        </tr>

                        <tr>
                            <th>Ascendente:</th>
                            <td style="text-align:right;"><asp:Literal ID="litAscendente" runat="server"></asp:Literal></td>
                        </tr>
                    </table>
                </div>
            </div>
         </div>
        </section>
      <script type="text/javascript" src="js/menuMobile.js"></script>
    </form>
</body>
</html>
