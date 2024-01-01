<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="admin.css" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

    <div id="mySidenav" class="sidenav">
        <p class="logo"><span>Green</span>-Supermarket</p>
        <a href="#" class="icon-a"><i class="fa fa-dashboard icons"></i> Dashboard</a>
        <a href="#" class="icon-a"><i class="fa fa-users icons"></i> Customers</a>
        <a href="#" class="icon-a"><i class="fa fa-shopping-bag icons"></i> Orders</a>
        <a href="inventory.jsp" class="icon-a"><i class="fa fa-tasks icons"></i> Inventory</a>
    </div>
    <div id="main">
        <div class="head">
            <div class="col-div-6">
                <span style="font-size:30px;cursor:pointer; color: white;" class="nav">☰ Dashboard</span>
                <span style="font-size:30px;cursor:pointer; color: white;" class="nav2">☰ Dashboard</span>
            </div>
            <div class="col-div-6">
                <div class="profile">
                    <img src="image/user.png" class="pro-img" />
                    <p> Admin </p>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>
        <br/>

        <div class="col-div-3">
            <div class="box">
                <p>XXXX<br /><span>Customers</span></p>
                <i class="fa fa-users box-icon"></i>
            </div>
        </div>
        
        <div class="col-div-3">
            <div class="box">
                <p>XXX<br /><span>Orders</span></p>
                <i class="fa fa-shopping-bag box-icon"></i>
            </div>
        </div>
        <div class="clearfix"></div>
        <br /><br />
        <div class="col-div-8">
            <div class="box-8">
                <div class="content-box">
                    <p>Top Selling Items </p>
                    <br />
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>NAME</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>xx</td>
                            <td>xxx xxxx</td>
                        </tr>
                        <tr>
                            <td>xx</td>
                            <td>xxx xxxx</td>
                        </tr>
                        <tr>
                            <td>xx</td>
                            <td>xxx xxxx</td>
                        </tr>
                        <tr>
                            <td>xx</td>
                            <td>xxx xxxx</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-div-4">
            <div class="box-4">
                <div class="content-box">
                    <p>Total Sale </p>

                    <div class="circle-wrap">
                        <div class="circle">
                            <div class="mask full">
                                <div class="fill"></div>
                            </div>
                            <div class="mask half">
                                <div class="fill"></div>
                            </div>
                            <div class="inside-circle"> 70% </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>
    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>

        $(".nav").click(function () {
            $("#mySidenav").css('width', '70px');
            $("#main").css('margin-left', '70px');
            $(".logo").css('visibility', 'hidden');
            $(".logo span").css('visibility', 'visible');
            $(".logo span").css('margin-left', '-10px');
            $(".icon-a").css('visibility', 'hidden');
            $(".icons").css('visibility', 'visible');
            $(".icons").css('margin-left', '-8px');
            $(".nav").css('display', 'none');
            $(".nav2").css('display', 'block');
        });

        $(".nav2").click(function () {
            $("#mySidenav").css('width', '300px');
            $("#main").css('margin-left', '300px');
            $(".logo").css('visibility', 'visible');
            $(".icon-a").css('visibility', 'visible');
            $(".icons").css('visibility', 'visible');
            $(".nav").css('display', 'block');
            $(".nav2").css('display', 'none');
        });

    </script>
</body>
</html>