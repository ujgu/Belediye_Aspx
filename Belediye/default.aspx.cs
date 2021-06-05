using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Belediye
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DuyurulariGetir();

        }

        private void DuyurulariGetir()
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            string sorgu = "Select * from Duyurular order by Tarih desc";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            lstDuyuru.DataSource = dr;
            lstDuyuru.DataBind();
            cnn.Close();
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {

            if (txtKullaniciAdi.Text != "" && txtSifre.Text != "")
            {
                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
                string sorgu = "Insert into Kullanicilar(KullaniciAdi, Sifre) Values (@kullaniciadi, @sifre)";
                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();


                try
                {
                    cmd.Parameters.AddWithValue("@kullaniciadi", txtKullaniciAdi.Text);
                    cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);

                    cmd.ExecuteNonQuery();
                    cnn.Close();
                    lblSonuc.Text = "Kayıt işlemi başarılı.";

                }
                catch (Exception)
                {
                    lblSonuc.Text = "Kayıt işlemi gerçekleştirilemedi!";
                }




            }

            else
            {
                lblSonuc.Text = "Boş bırakmayınız!";
            }




        }
    }
}