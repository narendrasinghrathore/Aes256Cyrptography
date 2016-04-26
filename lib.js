/// <reference path="R:\Projects\LocatorIII\RTApi\src\RT.Solution\RT.Web.Api\Scripts/jquery-1.10.2.min.js" />
/// <reference path="aes.js" />
var generate = function () {
    var key = CryptoJS.enc.Utf8.parse('8080808080808080');
    var iv = CryptoJS.enc.Utf8.parse('8080808080808080');

    var t = $('#text').val();


    var encryptedpassword = CryptoJS.AES.encrypt(CryptoJS.enc.Utf8.parse(t), key,
                {
                    keySize: 128 / 8,
                    iv: iv,
                    mode: CryptoJS.mode.CBC,
                    padding: CryptoJS.pad.Pkcs7
                });

    var h = $('.console');
    $("#encValue").val(encryptedpassword.toString());
    $(h).text("Value: "+encryptedpassword.toString());
    log(encryptedpassword.toString());

}

var log = function (l) {
    console.log(l);
}