<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Parcial_3.Views.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>
        body {
            background: linear-gradient(135deg, #6e8efb, #a777e3);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Arial', sans-serif;
        }

        .form-container {
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

        .form-container h2 {
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
    </style>
    <title>Videojuegos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Agregar Videojuego</h2>
            <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" placeholder="Nombre"></asp:TextBox>
            <asp:TextBox ID="txtCantidad" CssClass="form-control" runat="server" placeholder="Cantidad"></asp:TextBox>
            <asp:TextBox ID="txtPrecio" CssClass="form-control" runat="server" placeholder="Precio"></asp:TextBox>
            <asp:FileUpload ID="fileImagen" CssClass="form-control" runat="server" />
            
            <asp:Button ID="btnAgregar" CssClass="btn btn-custom" runat="server" Text="Agregar Videojuego" OnClick="btnAgregar_Click"/>
            <asp:Button ID="btnMostrar" CssClass="btn btn-custom" runat="server" Text="Mostrar Videojuegos" OnClick="btnMostrar_Click"/>
        </div>
    </form>
</body>
</html>
