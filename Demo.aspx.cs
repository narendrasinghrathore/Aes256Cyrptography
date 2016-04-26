using System;
using RT.Web.Api.AesDemo;
namespace RT.Web.Api.AesDemo
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnServer_Click(object sender, EventArgs e)
        {
            //var text = txtEncrypt.Text;
            var text = encValue.Value;
            var result = cryptoLib.EncryptDecrypt(text, EncryptionMode.Decrypt);
            outputWindow.InnerText = result;
        }
        [System.Web.Mvc.HttpGet]
        public string Decrypt(string enc)
        {
            string result = string.Empty;
            result = cryptoLib.EncryptDecrypt(enc, EncryptionMode.Decrypt);
            return result;
        }

    }
}