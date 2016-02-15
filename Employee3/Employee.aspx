<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Employee3.Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper">
         <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">क्रियाकलापहरु</h1>
                </div>
                <!-- /.col-lg-12 -->
         </div>
         <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-users fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">26</div>
                                    <div>कर्मचारीरुको विवरण</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">पूरा हेर्नुहोस्</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-plus fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">12</div>
                                    <div>नयाँ थप्नुहोस् ।</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">पूरा हेर्नुहोस्</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <%--<div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-shopping-cart fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">124</div>
                                    <div>शाखाहरु</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">पूरा हेर्नुहोस्</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-support fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">13</div>
                                    <div>तालिमहरु</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">पूरा हेर्नुहोस्</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>--%>
            </div>
         <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            कर्मचारीहरुको सामान्य जानकारी फारम 
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                            <asp:Label ID="lblFirstName" runat="server" Text="पहिलो नाम" CssClass="control-label">

                                            </asp:Label>
                                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="पहिलो नाम"></asp:TextBox>
                                            
                                     </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblMiddleName" runat="server" Text="वीचको नाम" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtMiddleName" runat="server" CssClass="form-control" placeholder="थर"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblLastName" runat="server" Text="थर" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtLastNameNepali" runat="server" CssClass="form-control" placeholder="थर"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                            <asp:Label ID="lblSex" runat="server" Text="लिङ्ग" CssClass="control-label">

                                            </asp:Label>
                                            <div class="btn-group" data-toggle="buttons">
                                            <asp:Label runat="server" ID="lblMale" CssClass="btn btn-default active">
                                                <asp:RadioButton runat="server" GroupName="grpSex" type="radio" name="options" id="rbnMale" autocomplete="off" Text="पुरुष" />
                                                 
                                            </asp:Label>
                                            <asp:Label runat="server" ID="lblFemale" CssClass="btn btn-default active">
                                                
                                                <asp:RadioButton runat="server" GroupName="grpSex" type="radio" name="options" ID="rbnFemale" autocomplete="off" Text="महिला" />
                                            
              
                                            </asp:Label>
                                                <asp:Label runat="server" ID="lblOtherSex" CssClass="btn btn-default active">
                                                
                                                <asp:RadioButton runat="server" GroupName="grpSex" type="radio" name="options" id="rbnOtherSex" autocomplete="off" Text="अन्य"  />             
                                            </asp:Label>
                                                        
                                </div>
                                            
                                     </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblBirthDate" runat="server" Text="जन्म मिति" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtBirthDate" runat="server" CssClass="form-control" placeholder="YYYY-MM-DD"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblPhone" runat="server" Text="फोन नं." CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="फोन नं."></asp:TextBox>
                                    </div>
                                </div>
                                </div>

                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                            <asp:Label ID="lblMobile" runat="server" Text="मोबाईल नं." CssClass="control-label">

                                            </asp:Label>
                                            <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="मोबाईल नं."></asp:TextBox>
                                            
                                     </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblFax" runat="server" Text="फ्याक्स नं." CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtFax" runat="server" CssClass="form-control" placeholder="फ्याक्स नं."></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblPersonalEmail" runat="server" Text="व्यक्तिगत ईमेल" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtPersonalEmail" runat="server" CssClass="form-control" placeholder="व्यक्तिगत ईमेल"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                            <asp:Label ID="lblOfficialEmail" runat="server" Text="अफिसियल ईमेल" CssClass="control-label">

                                            </asp:Label>
                                            <asp:TextBox ID="txtOfficialEmail" runat="server" CssClass="form-control" placeholder="अफिसियल ईमेल"></asp:TextBox>
                                            
                                     </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblAddress" runat="server" Text="ठेगाना" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="ठेगाना"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblDistrict" runat="server" Text="जिल्ला" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtDistrict" runat="server" CssClass="form-control" placeholder="जिल्लाको नाम"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                            <asp:Label ID="lblCitizenshipNo" runat="server" Text="नागरिकता नं." CssClass="control-label">

                                            </asp:Label>
                                            <asp:TextBox ID="txtCitizenshipNo" runat="server" CssClass="form-control" placeholder="नागरिकता नं."></asp:TextBox>
                                            
                                     </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblCitizenshipIssuedDate" runat="server" Text="नागरिकता जारी मिति" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtCitizenshipIssuedDate" runat="server" CssClass="form-control" placeholder="YYYY-MM-DD"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblCitizenshipIssuedDistrict" runat="server" Text="नागरिकता जारी जिल्ला" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtCitizenshipIssuedDistrict" runat="server" CssClass="form-control" placeholder="नागरिकता जारी जिल्ला"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                            <asp:Label ID="lblJoinDate" runat="server" Text="नगरपालिका काम सुरु गरेको मिति" CssClass="control-label">

                                            </asp:Label>
                                            <asp:TextBox ID="txtJoinDate" runat="server" CssClass="form-control" placeholder="YYYY-MM-DD"></asp:TextBox>
                                            
                                     </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblPermanentDate" runat="server" Text="स्थायी कर्मचारी भएको मिति" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtPermanentDate" runat="server" CssClass="form-control" placeholder="YYYY-MM-DD"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblRetirementDate" runat="server" Text="अवकाश प्राप्त गर्ने मिति" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtRetirementDate" runat="server" CssClass="form-control" placeholder="YYYY-MM-DD"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label runat="server" ID="lblMaritalStatus" CssClass="control-label" Text="वैवाहिक स्थिति"></asp:Label>
                                        <div class="btn-group" data-toggle="buttons">
                                            <asp:Label runat="server" ID="lblUnMarried" CssClass="btn btn-default active">
                                                <asp:RadioButton runat="server" GroupName="MaritalStatus" type="radio" Text="अविवाहित" name="options" id="rbnUnMarred" autocomplete="off" />
                                                 
                                            </asp:Label>
                                            <asp:Label runat="server" ID="lblMarried" CssClass="btn btn-default active">
                                                
                                                <asp:RadioButton runat="server" Text="अविवाहित" GroupName="MaritalStatus" type="radio" name="options" id="rbnMarried" autocomplete="off"  />
                                               
                                               
                                            </asp:Label>
                                                        
                                </div>
                                </div>
                                    </div>
                               
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblChildBoy" runat="server" Text="बालक सङ्ख्या" CssClass="control-label" >

                                        </asp:Label>
                                        <asp:TextBox ID="txtChildBoy" runat="server" CssClass="form-control" placeholder="बालक सङख्या" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblChildGirl" runat="server" Text="बालिका सङ्ख्या" CssClass="control-label" >

                                        </asp:Label>
                                        <asp:TextBox ID="txtChildGirl" runat="server" CssClass="form-control" placeholder="बालिका सङ्ख्या" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                            <asp:Label runat="server" ID="lblfilePpPhoto" Text="पासपोर्ट साईज फोटो"></asp:Label>
                                            <asp:FileUpload runat="server" type="file" ID="filePpPhoto"/>
                                        </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                            <asp:Label runat="server" ID="lblCitizenshipCopy" Text="नागरिकता"></asp:Label>
                                            <asp:FileUpload runat="server" type="file" ID="fileCitizenshipCopy" CssClass="file-loading"/>
                                        </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblLeaveHome" runat="server" Text="प्राप्त घऱ विदा सङ्ख्या" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtLeaveHome" runat="server" CssClass="form-control" placeholder="प्राप्त घऱ विदा सङ्ख्या"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                            <asp:Label runat="server" ID="lblSickLeave" Text="प्राप्त बिरामी बिदा" CssClass="control-label"></asp:Label>
                                            <asp:TextBox runat="server" CssClass="form-control" ID="txtSickLeave" placeholder="प्राप्त बिरामी बिदा"/>
                                        </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label runat="server" ID="lblIsActive" CssClass="control-label" Text="कर्मचारीको अवस्था"></asp:Label>
                                        <div class="btn-group" data-toggle="buttons">
                                            <asp:Label runat="server" ID="lblIsWorking" CssClass="btn btn-default active">
                                                
                                                <asp:RadioButton runat="server" Text="कार्यरत" GroupName="Activeness" type="radio" name="options" id="rbnWorking" autocomplete="off" checked />

                                                
                                            </asp:Label>
                                            <asp:Label runat="server" ID="Label1" CssClass="btn btn-default active">
                                                
                                                <asp:RadioButton runat="server" Text="अवकाश प्राप्त" GroupName="Activeness" type="radio" name="options" id="rbnRetired" autocomplete="off"  />
                                            </asp:Label>
                                            <asp:Label runat="server" ID="Label2" CssClass="btn btn-default active">
                                                
                                                <asp:RadioButton runat="server" Text="अन्य" GroupName="Activeness" type="radio" name="options" id="rbnOther" autocomplete="off"  />

                                                
                                            </asp:Label>             
                                </div>
                                </div>
                                    </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="Label3" runat="server" Text="प्राप्त घऱ विदा सङ्ख्या" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="प्राप्त घऱ विदा सङ्ख्या"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                            <asp:Label runat="server" ID="lblCreatedBy" Text="डाटा भर्ने व्यक्ति" CssClass="control-label"></asp:Label>
                                            <asp:TextBox runat="server" CssClass="form-control" ID="txtCreatedBy" placeholder="डाटा भर्ने व्यक्ति"/>
                                        </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblCreatedDate" runat="server" Text="भरेको मिति" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtCreatedDate" runat="server" CssClass="form-control" placeholder="भरेको मिति"></asp:TextBox>
                                    </div>
                                </div>
                                
                                
                            </div>

                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                            <asp:Label runat="server" ID="lblUpdatedBy" Text="अपडेट गर्ने व्यक्ति" CssClass="control-label"></asp:Label>
                                            <asp:TextBox runat="server" CssClass="form-control" ID="txtUpdatedBy" placeholder="अपडेट गर्ने व्यक्ति"/>
                                        </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                            <asp:Label runat="server" ID="lblUpdatedDate" Text="अपडेट गरिएको मिति" CssClass="control-label"></asp:Label>
                                            <asp:TextBox runat="server" CssClass="form-control" ID="txtUpdatedDate" placeholder="YYYY-MM-DD"/>
                                        </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblDocument" runat="server" Text="अन्य डोकुमेन्ट" CssClass="control-label">

                                        </asp:Label>
                                        <asp:TextBox ID="txtDocument" runat="server" CssClass="form-control" placeholder="अन्य डोकुमेन्ट"></asp:TextBox>
                                    </div>
                                </div>
                                
                                
                            </div>
                            <div class="row">
                                <div class="col-lg-12">

                                
                                    <div class="form-group">
                                            <asp:Label runat="server" ID="lblNote" Text="अन्य जानकारी" CssClass="control-label"></asp:Label>
                                            <asp:TextBox runat="server" CssClass="form-control" ID="txtNote" TextMode="MultiLine"/>
                                        </div>
                                
                            </div>
                                
                                </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <asp:Button runat="server" ID="btnSubmit" type="submit" CssClass="btn btn-primary" Text="पेश गर्नुहोस् ।" OnClick="btnSubmit_Click"></asp:Button>
                                </div>
                            </div>                 
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
    </div>
</asp:Content>
