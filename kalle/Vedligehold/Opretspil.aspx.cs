using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Tilføjet af MBH, til oprettelse af resultater for en spilleaften 
using System.Data.SqlClient;

namespace kalle.Vedligehold
{
    public partial class Opretspil : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            // Udfyld dato felte med dags dato.
            // Der skal tilrettes til spilledagen.
            if (TextBoxDato.Text.Length == 0)
            {
                System.DateTime dt = System.DateTime.Now;
                string sdt = dt.ToString("yyyy-MM-dd");
                TextBoxDato.Text = sdt;
            }

            // Put cursoren i dato feltet.
            TextBoxDato.Focus();

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String valgt = DropDownList1.Items[DropDownList1.SelectedIndex].Value;
            // Label_valgt.Text = DropDownList1.Items[DropDownList1.SelectedIndex].Text + " har nummer: " + valgt;
            Response.Write(DropDownList1.Items[DropDownList1.SelectedIndex].Text + " har nummer: " + valgt);
        }
        protected void TextBoxDato_TextChanged(object sender, EventArgs e)
        {
            // Focus på næste felt.
            TextBoxSpil1.Focus();
        }
        protected void TextBoxSpil1_TextChanged(object sender, EventArgs e)
        {
            Beregn_Gennemsnit();

            // Focus på næste felt.
            TextBoxSpil2.Focus();

        }
        protected void TextBoxSpil2_TextChanged(object sender, EventArgs e)
        {
            Beregn_Gennemsnit();

            // Focus på næste felt.
            TextBoxSpil3.Focus();
        }

        protected void TextBoxSpil3_TextChanged(object sender, EventArgs e)
        {
            Beregn_Gennemsnit();

            // Focus på næste felt.
            TextBoxSpil4.Focus();
        }

        protected void TextBoxSpil4_TextChanged(object sender, EventArgs e)
        {
            Beregn_Gennemsnit();

            // Focus på næste felt.
            TextBoxSpil5.Focus();
        }

        protected void TextBoxSpil5_TextChanged(object sender, EventArgs e)
        {
            Beregn_Gennemsnit();

            // Focus på næste felt.
            TextBoxPlacering.Focus();
        }

        protected void TextBoxPlacering_TextChanged(object sender, EventArgs e)
        {
            // Focus på næste felt.
            CheckBoxKalle.Focus();
        }

        protected void CheckBoxKalle_OnCheckedChanged(object sender, EventArgs e)
        {
            Response.Write("Værdien af CheckBboxKalle er: " + CheckBoxKalle.Checked);

            if (CheckBoxKalle.Checked == true)
            {
                Response.Write(", Checkboksen ER sat, ");
            }
            else
            {
                Response.Write("Værdien er IKKE sat, ");
            }

            // Focus på næste felt.
            Opret.Focus();
        }

        protected void Opret_Click(object sender, EventArgs e)
        {
            Response.Write("Der er trykket på Opret knappen");

            insert_Operation();

        }

        protected void insert_Operation()
        {
            // SQL kommandoen for oprettelse af en score post

            // Hvis der oprettes med en lang string i Command feltet.
            // Kan ikke anbefales pga SQL injektion
            // string KallekamSQL = "insert into score (Auto1, Sesson, Dato, Placering, Spil1_spillet, Spil1, Spil2_spillet, Spil2, Spil3_spillet, Spil3, Spil4_spillet, Spil4, Spil5_spillet, Spil5, Gennemsnit, Kamel_passer) values (1, 12, 15/03/2009, 100, 125, 0)";

            // Benyttes i stedet for, hvor de enkelte felte adderes til ?????? 
            string KallekamSQL = "insert into score (Auto1,  Sesson,  Dato,  Placering,  Spil1_spillet,  Spil1,  Spil2_spillet,  Spil2,  Spil3_spillet,  Spil3,  Spil4_spillet,  Spil4,  Spil5_spillet,  Spil5,  Gennemsnit,  Kamel_passer)"
                                        + " values (@Auto1, @Sesson, @Dato, @Placering, @Spil1_spillet, @Spil1, @Spil2_spillet, @Spil2, @Spil3_spillet, @Spil3, @Spil4_spillet, @Spil4, @Spil5_spillet, @Spil5, @Gennemsnit, @Kamel_passer)";

            // ConnectionString til databasen
            // SqlConnection KallekamDB = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=Kallekam;User ID=sa;Password=10Xblank");
            SqlConnection KallekamDB = new SqlConnection("Data Source=localhost;Initial Catalog=Kallekamel;User ID=sa;Password=10Xblank");
            SqlCommand KallekamCommand = new SqlCommand(KallekamSQL, KallekamDB);

            // Den valgte spillers ID
            SqlParameter par = new SqlParameter("@Auto1", Convert.ToDecimal(DropDownList1.Items[DropDownList1.SelectedIndex].Value));
            KallekamCommand.Parameters.Add(par);

            // Indeværende sæson 2016-2017 = 20
            par = new SqlParameter("@Sesson", 20);
            KallekamCommand.Parameters.Add(par);

            // Dato for spille dagen.
            par = new SqlParameter("@Dato", DateTime.Parse(TextBoxDato.Text));
            KallekamCommand.Parameters.Add(par);

            // Placering for dagen
            par = new SqlParameter("@Placering", Convert.ToDecimal(TextBoxPlacering.Text));
            KallekamCommand.Parameters.Add(par);

            // Spil1
            if (TextBoxSpil1.Text.Length > 0)
            {
                par = new SqlParameter("@Spil1_Spillet", Convert.ToInt16(1));
                KallekamCommand.Parameters.Add(par);
                par = new SqlParameter("@Spil1", Convert.ToDecimal(TextBoxSpil1.Text));
                KallekamCommand.Parameters.Add(par);
            }
            else
            {
                par = new SqlParameter("@Spil1_Spillet", Convert.ToInt16(0));
                KallekamCommand.Parameters.Add(par);
                par = new SqlParameter("@Spil1", Convert.ToDecimal(0));
                KallekamCommand.Parameters.Add(par);
            }

            // Spil2
            if (TextBoxSpil2.Text.Length > 0)
            {
                par = new SqlParameter("@Spil2_Spillet", Convert.ToInt16(1));
                KallekamCommand.Parameters.Add(par);
                par = new SqlParameter("@Spil2", Convert.ToDecimal(TextBoxSpil2.Text));
                KallekamCommand.Parameters.Add(par);
            }
            else
            {
                par = new SqlParameter("@Spil2_Spillet", Convert.ToInt16(0));
                KallekamCommand.Parameters.Add(par);
                par = new SqlParameter("@Spil2", Convert.ToDecimal(0));
                KallekamCommand.Parameters.Add(par);
            }
            // Spil3
            if (TextBoxSpil3.Text.Length > 0)
            {
                par = new SqlParameter("@Spil3_Spillet", Convert.ToInt16(1));
                KallekamCommand.Parameters.Add(par);
                par = new SqlParameter("@Spil3", Convert.ToDecimal(TextBoxSpil3.Text));
                KallekamCommand.Parameters.Add(par);
            }
            else
            {
                par = new SqlParameter("@Spil3_Spillet", Convert.ToInt16(0));
                KallekamCommand.Parameters.Add(par);
                par = new SqlParameter("@Spil3", Convert.ToDecimal(0));
                KallekamCommand.Parameters.Add(par);
            }

            // Spil4
            if (TextBoxSpil4.Text.Length > 0)
            {
                par = new SqlParameter("@Spil4_Spillet", Convert.ToInt16(1));
                KallekamCommand.Parameters.Add(par);
                par = new SqlParameter("@Spil4", Convert.ToDecimal(TextBoxSpil4.Text));
                KallekamCommand.Parameters.Add(par);
            }
            else
            {
                par = new SqlParameter("@Spil4_Spillet", Convert.ToInt16(0));
                KallekamCommand.Parameters.Add(par);
                par = new SqlParameter("@Spil4", Convert.ToDecimal(0));
                KallekamCommand.Parameters.Add(par);
            }
            // Spil5
            if (TextBoxSpil5.Text.Length > 0)
            {
                par = new SqlParameter("@Spil5_Spillet", Convert.ToInt16(1));
                KallekamCommand.Parameters.Add(par);
                par = new SqlParameter("@Spil5", Convert.ToDecimal(TextBoxSpil5.Text));
                KallekamCommand.Parameters.Add(par);
            }
            else
            {
                par = new SqlParameter("@Spil5_Spillet", Convert.ToInt16(0));
                KallekamCommand.Parameters.Add(par);
                par = new SqlParameter("@Spil5", Convert.ToDecimal(0));
                KallekamCommand.Parameters.Add(par);
            }
            // Gennemsnit
            par = new SqlParameter("@Gennemsnit", Convert.ToDecimal(LabelGennemsnit.Text));
            KallekamCommand.Parameters.Add(par);

            // Kamelpasser
            par = new SqlParameter("@Kamel_passer", CheckBoxKalle.Checked);
            KallekamCommand.Parameters.Add(par);

            //Opret forbindelsen
            KallekamDB.Open();

            //Skriv spil resultatet
            KallekamCommand.ExecuteNonQuery();

            //Luk forbindelsen
            KallekamDB.Close();

            TextBoxSpil1.Text = "";
            TextBoxSpil2.Text = "";
            TextBoxSpil3.Text = "";
            TextBoxSpil4.Text = "";
            TextBoxSpil5.Text = "";
            LabelGennemsnit.Text = "";
            TextBoxPlacering.Text = "";
            CheckBoxKalle.Checked = false;

            return;
            //Response.Write(LabelGennemsnit.Text);
        }
        protected void Beregn_Gennemsnit()
        {
            Response.Write("Er i Beregn_Gennemsnit, ");
            int iSpil1 = 0;
            int iSpil2 = 0;
            int iSpil3 = 0;
            int iSpil4 = 0;
            int iSpil5 = 0;
            int iAntSpil = 0;
            int iSumSpil = 0;
            decimal dGenSpil = 0;

            Response.Write("Spil1, ");
            if (TextBoxSpil1.Text.Length > 0)
            {
                iSpil1 = Convert.ToInt16(TextBoxSpil1.Text);
                iAntSpil = iAntSpil + 1;
                Response.Write("Har fundet spil1, ");
            }
            Response.Write("Spil2, ");
            if (TextBoxSpil2.Text.Length > 0)
            {
                iSpil2 = Convert.ToInt16(TextBoxSpil2.Text);
                iAntSpil = iAntSpil + 1;
                Response.Write("Har fundet spil2, ");
            }
            Response.Write("Spil3, ");
            if (TextBoxSpil3.Text.Length > 0)
            {
                iSpil3 = Convert.ToInt16(TextBoxSpil3.Text);
                iAntSpil = iAntSpil + 1;
                Response.Write("Har fundet spil3, ");
            }
            Response.Write("Spil4, ");
            if (TextBoxSpil4.Text.Length > 0)
            {
                iSpil4 = Convert.ToInt16(TextBoxSpil4.Text);
                iAntSpil = iAntSpil + 1;
                Response.Write("Har fundet spil4, ");
            }
            Response.Write("Spil5, ");
            if (TextBoxSpil5.Text.Length > 0)
            {
                iSpil5 = Convert.ToInt16(TextBoxSpil5.Text);
                iAntSpil = iAntSpil + 1;
                Response.Write("Har fundet spil5, ");
            }
            iSumSpil = iSpil1 + iSpil2 + iSpil3 + iSpil4 + iSpil5;
            // Hvis iSpil1 og ISumSpil er defineret som int og dGenSpil er defineret som decimal.
            dGenSpil = (decimal)((decimal)iSumSpil / iAntSpil);

            // LabelGennemsnit.Text = dGenSpil.ToString("0.##");
            LabelGennemsnit.Text = dGenSpil.ToString("##0.00");

            Response.Write("JUHU iAntSpil: " + iAntSpil + " iSumSpil: " + iSumSpil + " IGenSpil: " + dGenSpil);

        }
    }
}