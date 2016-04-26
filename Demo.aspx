<%@ Page Language="C#" ClientIDMode="Static" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="RT.Web.Api.AesDemo.Demo" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Demo for encryption and decryption using javascript and c#</title>
    <link href="demo.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script src="aes.js"></script>
    <script src="lib.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="encValue" runat="server" ClientIDMode="Static" />
        <h1>
            Javascipt encryption and decryption.
        </h1>
    <div>
    <fieldset>
        <legend>Client side encryption:</legend>
        <div>
            <input type="text" id="text"  />
        </div>
        <div>
            <input type="button" id="btnClient" onclick="generate();" value="Encrypt" />
        </div>
        <div>
            <p class="console"></p>
        </div>
    </fieldset>
    </div>
        <div>
            <fieldset>
                <legend>Server side decryption:</legend>
                <div>
                    <asp:Button ID="btnServer" runat="server" OnClick="btnServer_Click" CssClass="btn" Text="Decrypt" />
                </div>
                <div>
                    <p id="outputWindow"  runat="server"></p>
                </div>
            </fieldset>
        </div>
        <div class="note">
            Note: 
            <ol>
               <li>
                   It's a aspx page used for demo purpose.
               </li> 
                <li>
                    On decryption event it's getting postback to server to decrypt the value.
                </li>
                <li>
                    Key & Intialization vector, should be same on both client and server.
                </li>
            </ol>
        </div>
    </form>
</body>
</html>
