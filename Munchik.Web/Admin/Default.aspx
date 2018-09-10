<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Munchki.Web.Admin.Default" MasterPageFile="~/Admin/Admin.Master" %>



<asp:Content ContentPlaceHolderID="cphMaster" ID="defaultLogin" runat="server">
    <div class="col-md-6 col-lg-3">
        <div class="card">
            <div class="stat-widget-five">
                <div class="stat-icon">
                    <i class="ti-home bg-primary"></i>
                </div>
                <div class="stat-content">
                    <div class="stat-heading color-primary">New User</div>
                    <div class="stat-text">2700</div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-3">
        <div class="card">
            <div class="stat-widget-five">
                <div class="stat-icon">
                    <i class="ti-file bg-success"></i>
                </div>
                <div class="stat-content">
                    <div class="stat-heading color-success">Profit</div>
                    <div class="stat-text">3600000</div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-3">
        <div class="card">
            <div class="stat-widget-five">
                <div class="stat-icon">
                    <i class="ti-info bg-danger"></i>
                </div>
                <div class="stat-content">
                    <div class="stat-heading color-danger">Growth</div>
                    <div class="stat-text">200%</div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-3">
        <div class="card">
            <div class="stat-widget-five">
                <div class="stat-icon bg-warning">
                    <i class="ti-world"></i>
                </div>
                <div class="stat-content">
                    <div class="stat-heading color-warning">Revenue</div>
                    <div class="stat-text">226000</div>
                </div>
            </div>
        </div>
    </div>

          <div class="row">
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-title">
                                    <h4>New Orders </h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Name</th>
                                                    <th>Product</th>
                                                    <th>quantity</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href="">
                                                                <img class="w-35" src="images/avatar/1.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>Lew Shawon</td>
                                                    <td><span>Dell-985</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-success">Done</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href="">
                                                                <img class="w-35" src="images/avatar/1.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>Lew Shawon</td>
                                                    <td><span>Asus-565</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-warning">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href="">
                                                                <img class="w-35" src="images/avatar/1.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>lew Shawon</td>
                                                    <td><span>Dell-985</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-success">Done</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href="">
                                                                <img class="w-35" src="images/avatar/1.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>Lew Shawon</td>
                                                    <td><span>Asus-565</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-warning">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href="">
                                                                <img class="w-35" src="images/avatar/1.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>lew Shawon</td>
                                                    <td><span>Dell-985</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-success">Done</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href="">
                                                                <img class="w-35" src="images/avatar/1.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>Lew Shawon</td>
                                                    <td><span>Asus-565</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-warning">Pending</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-title">
                                    <h4>Recent Orders </h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Name</th>
                                                    <th>Product</th>
                                                    <th>quantity</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href="">
                                                                <img class="w-35" src="images/avatar/1.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>Lew Shawon</td>
                                                    <td><span>Dell-985</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-success">Done</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href="">
                                                                <img class="w-35" src="images/avatar/1.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>Lew Shawon</td>
                                                    <td><span>Asus-565</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-warning">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href="">
                                                                <img class="w-35" src="images/avatar/1.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>lew Shawon</td>
                                                    <td><span>Dell-985</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-success">Done</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href="">
                                                                <img class="w-35" src="images/avatar/1.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>lew Shawon</td>
                                                    <td><span>Dell-985</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-success">Done</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href="">
                                                                <img class="w-35" src="images/avatar/1.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>Lew Shawon</td>
                                                    <td><span>Asus-565</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-warning">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href="">
                                                                <img class="w-35" src="images/avatar/1.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>lew Shawon</td>
                                                    <td><span>Dell-985</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-success">Done</span></td>
                                                </tr>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-title">
                                    <h4>Browser</h4>
                                </div>
                                <div class="card-body browser">
                                    <p>Chrome<span class="pull-right">85%</span></p>
                                    <div class="progress ">
                                        <div role="progressbar" style="width: 85%; height: 8px;" class="progress-bar bg-danger wow animated progress-animated"><span class="sr-only">60% Complete</span> </div>
                                    </div>
                                    <p class="m-t-10">Firefox<span class="pull-right">90%</span></p>
                                    <div class="progress">
                                        <div role="progressbar" style="width: 90%; height: 8px;" class="progress-bar bg-info wow animated progress-animated"><span class="sr-only">60% Complete</span> </div>
                                    </div>
                                    <p class="m-t-10">Safari<span class="pull-right">65%</span></p>
                                    <div class="progress m-b-30">
                                        <div role="progressbar" style="width: 65%; height: 8px;" class="progress-bar bg-success wow animated progress-animated"><span class="sr-only">60% Complete</span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                        <div class="col-lg-4">
                            <div class="card bg-primary">
                                <div class="weather-widget">
                                    <div id="weather-one" class="weather-one p-22"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="card bg-dark">
                                <div class="testimonial-widget-one p-17">
                                    <div class="testimonial-widget-one owl-carousel owl-theme">
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <img class="testimonial-author-img" src="images/avatar/1.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>
                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                                <i class="fa fa-quote-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <img class="testimonial-author-img" src="images/avatar/1.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>
                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                                <i class="fa fa-quote-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <img class="testimonial-author-img" src="images/avatar/1.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>
                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                                <i class="fa fa-quote-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <img class="testimonial-author-img" src="images/avatar/1.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>
                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                                <i class="fa fa-quote-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <img class="testimonial-author-img" src="images/avatar/1.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>
                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                                <i class="fa fa-quote-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <img class="testimonial-author-img" src="images/avatar/1.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>
                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                                <i class="fa fa-quote-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>
