<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mostrar.aspx.cs" Inherits="Parcial_3.Views.mostrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        body {
            background: linear-gradient(135deg, #6e8efb, #a777e3);
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .container {
            width: 100%;
            max-width: 1000px;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
            box-sizing: border-box;
        }

        .card {
            position: relative;
            background: #fff;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            text-align: center;
            transition: transform 0.3s;
            animation: fadeIn 1.2s ease-in-out;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            max-width: 100%;
            border-radius: 10px;
            margin-bottom: 15px;
            max-height: 150px;
            object-fit: cover;
        }

        .card h3 {
            color: #6e8efb;
            font-size: 1.5em;
            margin: 10px 0;
        }

        .card p {
            color: #333;
            font-size: 1em;
            margin: 5px 0;
        }

        /* Ajustes para dispositivos móviles */
        @media (max-width: 768px) {
            .container {
                grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            }

            .card {
                padding: 15px;
            }

            .card h3 {
                font-size: 1.3em;
            }

            .card p {
                font-size: 0.9em;
            }
        }

        @media (max-width: 480px) {
            .container {
                grid-template-columns: 1fr;
            }

            .card {
                padding: 10px;
            }

            .card h3 {
                font-size: 1.2em;
            }

            .card p {
                font-size: 0.85em;
            }
        }
    </style>
    <title>Videojuegos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Repeater ID="rptVideojuegos" runat="server">
                <ItemTemplate>
                    <div class="card">
                        <div style="position: absolute; top: 10px; right: 10px;">
                            <asp:LinkButton ID="btnActualizar" runat="server" CommandArgument='<%# Eval("ID") %>' OnClick="btnActualizar_Click">
                                <img src='<%# ResolveUrl("~/images/update-icon.png") %>' alt="Actualizar" style="width: 20px; height: 20px;" />
                            </asp:LinkButton>
                            <asp:LinkButton ID="btnBorrar" runat="server" CommandArgument='<%# Eval("ID") %>' OnClick="btnBorrar_Click">
                                <img src='<%# ResolveUrl("~/images/delete-icon.png") %>' alt="Borrar" style="width: 20px; height: 20px;"/>
                            </asp:LinkButton>
                        </div>
                        <img src='<%# ResolveUrl(Eval("Imagen").ToString()) %>' alt='<%# Eval("Nombre") %>' />
                        <h3><%# Eval("Nombre") %></h3>
                        <p><strong>Cantidad:</strong> <%# Eval("Cantidad") %></p>
                        <p><strong>Precio:</strong> $<%# Eval("Precio") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
