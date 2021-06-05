<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Belediye._default"  MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Aksaray Belediyesi</title>
    <link href="style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
    <script type="text/javascript">

    </script>

</head>
<body>
    <form id="form1" runat="server">
     
        <div id="wrapper">
            <header>
                <div class="logo">
                    
                </div>
                <nav>
                    <ul>
                        <li>
                            <a href="default.aspx">Anasayfa</a>
                            
                        </li>
                         <li>
                             <a href="default.aspx">Çalışmalar</a>
                            
                        </li>
                         <li>
                            <a href="default.aspx">Haberler</a>
                        </li>
                         <li>
                            <a href="default.aspx">İletişim</a>
                        </li>

                    </ul>
                </nav>
                <div class="arama">

                    <asp:TextBox ID="txtArama" CssClass="txtArama" runat="server" placeholder="arama" />
                    <asp:Button ID="btnArama" CssClass="btnArama" Text="Ara" runat="server" />

                </div>

            </header>
            
           

          <div class="banner">
              
             

          </div>

            <div class="sol-taraf">
                <div class="hizli-kayit">
                    <div class="ust">
                        Kayıt Ol

                    </div>
                    <div class="alt">
                        <div class="kullanici">
                        <span>Kullanıcı Adı</span>
                        <asp:TextBox ID="txtKullaniciAdi" CssClass="textbox" runat="server" />
                        </div>
                        <div class="sifre">
                        <span>Şifre</span>
                        <asp:TextBox ID="txtSifre" CssClass="textbox" runat="server" />
                            </div>
                        <asp:Button ID="btnKayit" CssClass="btnKayit" Text="Kaydol" runat="server"  OnClick="btnKayit_Click"/>
                        <asp:Label ID="lblSonuc" Text="" runat="server" />
                        </div>
                    </div>
                
           
                <div class="duyurular">
                    <div class="ust">
                        Duyurular

                    </div>
                    <div class="alt">
                        <asp:ListView ID="lstDuyuru" runat="server">
                            <ItemTemplate>
                                <div class="duyuru-wrap">
                           
                            <asp:Label Text='<%#Eval("Baslik") %>' runat="server" /><br />
                            <asp:Label Text='<%#Eval("Duyuru") %>' runat="server" /><br />
                            <asp:Label Text='<%#Eval("Tarih") %>' runat="server" />

                        </div>
                            </ItemTemplate>
                        </asp:ListView>
                        
                        
                    </div>
                </div>
            </div>

            <div class="icerik">

            </div>


            <footer>
                Utku İpek İnternet Programcılığı Proje Ödevi 2021
            </footer>


        </div>

        



    </form>
</body>
</html>
