<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM `member`"></asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Label ID="member_idLabel" runat="server" Text='<%# Eval("member_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="member_nameLabel" runat="server" Text='<%# Eval("member_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="member_addrLabel" runat="server" Text='<%# Eval("member_addr") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="업데이트" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="취소" />
                        </td>
                        <td>
                            <asp:Label ID="member_idLabel1" runat="server" Text='<%# Eval("member_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="member_nameTextBox" runat="server" Text='<%# Bind("member_name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="member_addrTextBox" runat="server" Text='<%# Bind("member_addr") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>데이터가 반환되지 않았습니다.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="삽입" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="지우기" />
                        </td>
                        <td>
                            <asp:TextBox ID="member_idTextBox" runat="server" Text='<%# Bind("member_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="member_nameTextBox" runat="server" Text='<%# Bind("member_name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="member_addrTextBox" runat="server" Text='<%# Bind("member_addr") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Label ID="member_idLabel" runat="server" Text='<%# Eval("member_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="member_nameLabel" runat="server" Text='<%# Eval("member_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="member_addrLabel" runat="server" Text='<%# Eval("member_addr") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server">member_id</th>
                                        <th runat="server">member_name</th>
                                        <th runat="server">member_addr</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Label ID="member_idLabel" runat="server" Text='<%# Eval("member_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="member_nameLabel" runat="server" Text='<%# Eval("member_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="member_addrLabel" runat="server" Text='<%# Eval("member_addr") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
