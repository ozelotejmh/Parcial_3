<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Parcial_3.Views.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
        <style>
    body {
        background: linear-gradient(135deg, #6e8efb, #a777e3);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Arial', sans-serif;
    }

    .login-container {
        background: #fff;
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        width: 100%;
        max-width: 400px;
        text-align: center;
        animation: fadeIn 1.2s ease-in-out;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: scale(0.8);
        }
        to {
            opacity: 1;
            transform: scale(1);
        }
    }

    .login-container h2 {
        color: #6e8efb;
        font-weight: bold;
        margin-bottom: 20px;
    }

    .form-control {
        margin-bottom: 15px;
    }

    .btn-custom {
        background-color: #6e8efb;
        border: none;
        color: white;
        padding: 10px 20px;
        border-radius: 50px;
        width: 100%;
        transition: 0.3s;
    }

    .btn-custom:hover {
        background-color: #a777e3;
    }

    .footer-text {
        margin-top: 15px;
        color: #999;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Iniciar Sesión</h2>
            <asp:TextBox ID="txtUser" CssClass="form-control" runat="server" placeholder="Nombre de usuario"></asp:TextBox>
            <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
            <asp:Button ID="btnLogin" CssClass="btn btn-custom" runat="server" Text="Iniciar Sesión" OnClick="btnLogin_Click"/>
            <p class="footer-text">¿Olvidaste tu contraseña?</p>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
