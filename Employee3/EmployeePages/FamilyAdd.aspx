<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePages/EmployeeView.Master" AutoEventWireup="true" CodeBehind="FamilyAdd.aspx.cs" Inherits="Employee3.EmployeePages.FamilyAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper">
        <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            पारिवारिक विवरण 
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                            <asp:Label ID="lblMemberName" runat="server" Text="सदस्यको नाम" CssClass="control-label">

                                            </asp:Label>
                                            <asp:TextBox ID="txtMemberName" runat="server" CssClass="form-control" placeholder="पहिलो नाम"></asp:TextBox>
                                            
                                     </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                            <asp:Label ID="Label1" runat="server" Text="लिङ्ग" CssClass="control-label">

                                            </asp:Label>
                                        <br />
                                            <div class="btn-group" data-toggle="buttons">
                                            <asp:Label runat="server" ID="Label2" CssClass="btn btn-default active">
                                                <asp:RadioButton runat="server" GroupName="MaritalStatus" type="radio" name="options" id="RadioButton1" autocomplete="off" />
                                                 पुरुष
                                            </asp:Label>
                                            <asp:Label runat="server" ID="Label3" CssClass="btn btn-default active">
                                                
                                                <asp:RadioButton runat="server" GroupName="MaritalStatus" type="radio" name="options" id="RadioButton2" autocomplete="off"  />
                                                महिला
              
                                            </asp:Label>
                                                <asp:Label runat="server" ID="Label4" CssClass="btn btn-default active">
                                                
                                                <asp:RadioButton runat="server" GroupName="MaritalStatus" type="radio" name="options" id="RadioButton3" autocomplete="off"  />
                                                अन्य              
                                            </asp:Label>
                                                        
                                </div>
                                            
                                     </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                            <asp:Label ID="lblRelation" runat="server" Text="सम्बन्ध" CssClass="control-label">

                                            </asp:Label>
                                            <asp:DropDownList ID="ddlRelation" runat="server" CssClass="form-control">
                                                <asp:ListItem Text="A" Value="A">A</asp:ListItem>
                                                <asp:ListItem Text="B" Value="B">B</asp:ListItem>
                                                <asp:ListItem Text="A" Value="A">C</asp:ListItem>
                                                <asp:ListItem Text="A" Value="A">D</asp:ListItem>
                                            </asp:DropDownList>
                                            
                                     </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                            <asp:Label ID="lblCurrentAge" runat="server" Text="हालको उमेर" CssClass="control-label">

                                            </asp:Label>
                                        
                                            <asp:TextBox runat="server" ID="txtCurrentAge" CssClass="form-control" TextMode="Number" placeholder="हालको उमेर" autofocus></asp:TextBox>
                                            
                                     </div>
                                </div>
                            </div>
                            
                           <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                            <asp:Label ID="lblCurrentEducation" runat="server" Text="हालको शिक्षा" CssClass="control-label">

                                            </asp:Label>
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                                <asp:ListItem Text="A" Value="A">A</asp:ListItem>
                                                <asp:ListItem Text="B" Value="B">B</asp:ListItem>
                                                <asp:ListItem Text="A" Value="A">C</asp:ListItem>
                                                <asp:ListItem Text="A" Value="A">D</asp:ListItem>
                                            </asp:DropDownList>
                                            
                                     </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                            <asp:Label ID="lblFamilytContact" runat="server" Text="सम्पर्क नं." CssClass="control-label">

                                            </asp:Label>
                                        
                                            <asp:TextBox runat="server" ID="txtFamilyContact" CssClass="form-control"  placeholder="सम्पर्क नं." autofocus></asp:TextBox>
                                            
                                     </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                            <asp:Label ID="lblFamilyUpdatedDate" runat="server" Text="अपडेट गरिएको मिति" CssClass="control-label">

                                            </asp:Label>
                                        <div class="input-group date" id="datetimepicker1">

                                        
                                            <asp:TextBox ID="txtFamilyUpdateDate" runat="server" CssClass="form-control" autofocus>
                                                
                                            </asp:TextBox>
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar">

                                                </span>
                                            </span>
                                        </div>
                                        <script type="text/javascript">
                                            $(function () {
                                                $('#datetimepicker1').datetimepicker();
                                            });
                                        </script>
                                            
                                     </div>
                                </div>
                                
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                            <asp:Label ID="lblFamiltyNote" runat="server" Text="अन्य नोट" CssClass="control-label">

                                            </asp:Label>
                                        
                                            <asp:TextBox runat="server" ID="txtFamilyNote" CssClass="form-control"  placeholder="अन्य नोट" TextMode="MultiLine"></asp:TextBox>
                                            
                                     </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <asp:Button runat="server" ID="btnSave" type="submit" CssClass="btn btn-primary" Text="डाटा राख्नुहोस् ।"></asp:Button>
                                </div>
                            </div>
                 
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    </div>
            </div>
        </div>
                    <!-- /.panel -->
</asp:Content>
