<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePages/EmployeeView.Master" AutoEventWireup="true" CodeBehind="EducationAdd.aspx.cs" Inherits="Employee3.EmployeePages.EducationAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--  <script>
          $(document).ready(function () {
              $('#<%= dgEducation.ClientID %>').DataTable({
                  responsive: true
              });
          });
    </script>--%>
</asp:Content>
<asp:Content ID="contentScript" ContentPlaceHolderID="scripts" runat="server"> 
     <script>
         $(document).ready(function () {
             $('#<%= dgEducation.ClientID %>').DataTable({
                 responsive: true
              });
          });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        शैक्षिक जानकारी
                                    </div>
                                    <table class="table table-striped table-bordered">
                                        <tr>
                                            <td>
                                                <div class="row">
                                                    <div class="col-lg-2">
                                                        <div class="form-group">
                                                            <asp:Label ID="lblLevel" runat="server" Text="तह" CssClass="control-label text-center">

                                                            </asp:Label>
                                                            <asp:DropDownList ID="ddlLevel" runat="server" CssClass="form-control">
                                                                <asp:ListItem Text="Under SLC" Value="Under SLC"></asp:ListItem>
                                                                <asp:ListItem Text="SLC" Value="Under SLC"></asp:ListItem>
                                                                <asp:ListItem Text="प्रमाणपत्र" Value="Certificate"></asp:ListItem>
                                                                <asp:ListItem Text="स्नातकोत्तर" Value="Bachelors"></asp:ListItem>
                                                                <asp:ListItem Text="स्नातह" Value="Masters"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-3">
                                                        <div class="form-group">
                                                            <asp:Label ID="lblInstitutionName" runat="server" Text="शैक्षिक संस्थाको नाम र ठेगाना" CssClass="control-label">

                                                            </asp:Label>

                                                            <asp:TextBox ID="txtInstitutionName" runat="server" Text="शैक्षिक संस्थाको नाम र ठेगाना" CssClass="form-control">

                                                            </asp:TextBox>


                                                        </div>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <div class="form-group">
                                                            <asp:Label ID="lblPassedYear" runat="server" Text="उत्तीर्ण गरेको वर्ष" CssClass="control-label">

                                                            </asp:Label>

                                                            <asp:TextBox ID="txtPassedYear" runat="server" placeholder="YYYY" CssClass="form-control">

                                                            </asp:TextBox>


                                                        </div>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <div class="form-group">
                                                            <asp:Label ID="lblPassedGrade" runat="server" Text="प्रतिशत/ग्रेड" CssClass="control-label">

                                                            </asp:Label>

                                                            <asp:TextBox ID="txtPassedGrade" runat="server" placeholder="प्रतिशत/ग्रेड" CssClass="form-control">

                                                            </asp:TextBox>


                                                        </div>
                                                    </div>
                                                    <div class="col-lg-3">
                                                        <div class="form-group">
                                                            <asp:Label ID="lblMajorSubjects" runat="server" Text="मुख्य विषयहरु" CssClass="control-label">

                                                            </asp:Label>

                                                            <asp:TextBox ID="txtMajorSubjects" runat="server" placeholder="मुख्य विषयहरु" CssClass="form-control">

                                                            </asp:TextBox>


                                                        </div>
                                                    </div>
                                                    <div class="col-lg-3">
                                                        <div class="form-group">
                                                            <asp:Label ID="lblNotes" runat="server" Text="Notes" CssClass="control-label">

                                                            </asp:Label>

                                                            <asp:TextBox ID="txtNotes" runat="server" placeholder="Notes" CssClass="form-control">

                                                            </asp:TextBox>


                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <asp:Button runat="server" ID="btnAddAnother" type="submit" CssClass="btn btn-primary" Text="ADD LEVEL" OnClick="btnAddAnother_Click"></asp:Button>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <h1></h1>

                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        कर्मचारीहरुको विवरण
                                    </div>
                                    <!-- /.panel-heading -->
                                    <div class="panel-body">
                                        <asp:GridView ID="dgEducation" runat="server" AutoGenerateColumns="False" UseAccessibleHeader="true"  CssClass="table table-hover table-striped table-bordered" OnPreRender="dgEducation_PreRender" OnRowCommand="dgEducation_RowCommand">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Id">
                                                    <ItemTemplate>
                                                        <%#Eval("fldEducationInfoID") %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="LEVEL">
                                                    <ItemTemplate>
                                                        <%#Eval("fldLevel") %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Board or university">
                                                   <ItemTemplate>
                                                        <%#Eval("fldBoardorUniversity") %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Passed year">
                                                   <ItemTemplate>
                                                        <%#Eval("fldPassedyear") %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Grade">
                                                   <ItemTemplate>
                                                        <%#Eval("fldPassedGrade") %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Major Subjects">
                                                    <ItemTemplate>
                                                        <%#Eval("fldMajorSubjects") %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="Notes">
                                                    <ItemTemplate>
                                                        <%#Eval("fldNote") %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Remove">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnkRemove" CssClass="btn btn-danger btn-sm" runat="server" CommandArgument='<%#Eval("fldEducationInfoID")%>'  
                                                            CommandName="Remove" OnClientClick="return confirm('Are you sure you want to delete this Education Level?');"><i class="glyphicon glyphicon-remove "></i>  Remove</asp:LinkButton>
                                                         </ItemTemplate>
                                                </asp:TemplateField>
                                                
                                            </Columns>
                                        </asp:GridView>
                                        <%--  <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>नाम</th>
                                            <th>पद</th>
                                            <th>तह</th>
                                            <th>सम्पर्क नम्बर</th>
                                            <th>ठेगाना</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>योगेन्द्र तामाङ</td>
                                            <td>ICT Volunteer</td>
                                            <td>अधिकृत</td>
                                            <td class="center">9843770267</td>
                                            <td class="center">काठमाण्डौ</td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td>अमित श्रेष्ठ</td>
                                            <td>UGE</td>
                                            <td>अधिकृत</td>
                                            <td class="center">9843770267</td>
                                            <td class="center">भक्तपुर</td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td>मीनगोपाल तखाछे</td>
                                            <td>जिन्शी शाखा प्रमुख</td>
                                            <td>ना.सु.</td>
                                            <td class="center">9843770267</td>
                                            <td class="center">धुलिखेल</td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td>श्रीविक्रम व्याञ्जु</td>
                                            <td>सामाजिक विकास अधिकृत</td>
                                            <td>लेखा अधिकृत</td>
                                            <td class="center">9843770267</td>
                                            <td class="center">धुलिखेल</td>
                                        </tr>                                      
                                    </tbody>
                                </table>--%>
                                    </div>
                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                </div>
                <!-- /.panel-body -->
            </div>
        </div>
    </div>
</asp:Content>
