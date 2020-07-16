<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yijianchakan.aspx.cs" Inherits="_20171847126_刘瑞.yijianchakan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:yijianConnectionString %>" DeleteCommand="DELETE FROM [yijian] WHERE [name] = @original_name AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([yijian] = @original_yijian) OR ([yijian] IS NULL AND @original_yijian IS NULL))" InsertCommand="INSERT INTO [yijian] ([name], [email], [yijian]) VALUES (@name, @email, @yijian)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [yijian]" UpdateCommand="UPDATE [yijian] SET [email] = @email, [yijian] = @yijian WHERE [name] = @original_name AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([yijian] = @original_yijian) OR ([yijian] IS NULL AND @original_yijian IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_yijian" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="yijian" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="yijian" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_yijian" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="name" DataSourceID="SqlDataSource1" Height="265px" Width="422px">
            <EditItemTemplate>
                name:
                <asp:Label ID="nameLabel1" runat="server" Text='<%# Eval("name") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                yijian:
                <asp:TextBox ID="yijianTextBox" runat="server" Text='<%# Bind("yijian") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                yijian:
                <asp:TextBox ID="yijianTextBox" runat="server" Text='<%# Bind("yijian") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                <br />
                yijian:
                <asp:Label ID="yijianLabel" runat="server" Text='<%# Bind("yijian") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新建" />
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
