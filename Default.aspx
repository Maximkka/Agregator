<%@ Page Title="Лента новостей" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RssAgregator3._Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <link type="text/css" href="~/Content\Site.css" rel="stylesheet" />
    <div style="max-height:auto; overflow:auto">
        <asp:Repeater ID="RepeaterRss" runat="server">
            <ItemTemplate>
                <div style="border:1px solid black; padding:50px; margin-top:10px; margin-bottom:10px; margin-left:250px; margin-right:250px;">
                    <p><strong>Дата публикации: </strong><%# Eval("PubDate") %></p>
                    <h3 style="color:#2196f3"><%# Eval("Title") %></h3>
                    <p><%# Eval("Description") %></p>
                    <p><strong>Источник: <a href='<%# Eval("Channel") %>' target="_blank"><%# Eval("Channel") %></a></strong></p>
                    <p style="text-align:center;"><a class="button" href='<%# Eval("Link") %>' target="_blank" >Читать далее...</a></p>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>