<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/admin.Master" CodeBehind="AddWard.aspx.vb" Inherits="Metalife.AddWard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form runat=server>
    <asp:Label ID="Label1" runat="server" Text="ADD NEW WARD:"></asp:Label>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="38px" Width="214px" 
        AutoGenerateRows="False" DataKeyNames="WardName" DataSourceID="SqlDataSource1" 
        DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="WardName" HeaderText="WardName" ReadOnly="True" 
                SortExpression="WardName" />
            <asp:BoundField DataField="PricePerDay" HeaderText="PricePerDay" 
                SortExpression="PricePerDay" />
            <asp:BoundField DataField="TotalBeds" HeaderText="TotalBeds" 
                SortExpression="TotalBeds" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <asp:Label ID="Label2" runat="server" Text="WARDS:"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="WardName" DataSourceID="SqlDataSource1" Height="258px" 
        Width="685px">
        <Columns>
            <asp:BoundField DataField="WardName" HeaderText="WardName" ReadOnly="True" 
                SortExpression="WardName" />
            <asp:BoundField DataField="PricePerDay" HeaderText="PricePerDay" 
                SortExpression="PricePerDay" />
            <asp:BoundField DataField="TotalBeds" HeaderText="TotalBeds" 
                SortExpression="TotalBeds" />
            <asp:BoundField DataField="OccupiedBeds" HeaderText="OccupiedBeds" 
                SortExpression="OccupiedBeds" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [wards] WHERE [WardName] = @WardName" 
        InsertCommand="INSERT INTO [wards] ([WardName], [PricePerDay], [TotalBeds], [OccupiedBeds]) VALUES (@WardName, @PricePerDay, @TotalBeds, @OccupiedBeds)" 
        SelectCommand="SELECT [WardName], [PricePerDay], [TotalBeds], [OccupiedBeds] FROM [wards]" 
        
        UpdateCommand="UPDATE [wards] SET [PricePerDay] = @PricePerDay, [TotalBeds] = @TotalBeds, [OccupiedBeds] = @OccupiedBeds WHERE [WardName] = @WardName">
        <DeleteParameters>
            <asp:Parameter Name="WardName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="WardName" Type="String" />
            <asp:Parameter Name="PricePerDay" Type="Decimal" />
            <asp:Parameter Name="TotalBeds" Type="Int32" />
            <asp:Parameter Name="OccupiedBeds" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PricePerDay" Type="Decimal" />
            <asp:Parameter Name="TotalBeds" Type="Int32" />
            <asp:Parameter Name="OccupiedBeds" Type="Int32" />
            
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>
