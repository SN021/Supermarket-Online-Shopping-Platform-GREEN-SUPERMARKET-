<!DOCTYPE html>
<html>

<head>
    <title></title>
    <link rel="stylesheet" href="CSS/admin.css" type="text/css" />
    <link rel="stylesheet" href="http://cdns.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>


<body>

    <div id="mysidenav" class="sidenav">
        <p class="logo"><span>M</span>-softTech</p>
        <a href="#" class="icon-a"><i class="fa fa-dashboard icons"></i>&nbsp;&nbsp;Dashboard</a>
        <a href="#" class="icon-a"><i class="fa fa-user icons"></i>&nbsp;&nbsp;customers</a>
        <a href="#" class="icon-a"><i class="fa fa-list icons"></i>&nbsp;&nbsp;projects</a>
        <a href="#" class="icon-a"><i class="fa fa-shopping-bag icons"></i>&nbsp;&nbsp;orders</a>
        <a href="#" class="icon-a"><i class="fa fa-tasks icons"></i>&nbsp;&nbsp;Inventory</a>
        <a href="#" class="icon-a"><i class="fa fa-user icons"></i>&nbsp;&nbsp;Accounts</a>
        <a href="#" class="icon-a"><i class="fa fa-list icons"></i>&nbsp;&nbsp;tasks</a>

    </div>


    <div id="main">
        <div class="head">
            <div class="col-div-6">
                <span style="font-size: 30px; cursor: pointer;color: white;" class="nav">&#9776; Dashboard</span>
                <span style="font-size: 30px; cursor: pointer;color: white;" class="nav2">&#9776; Dashboard</span>
            </div>

            <div class="col-div-6">

                <div class="col-div-6" <img src="1.png" class="pro-img">
                    <p>Green Super Market <span>Online Shopping Site</span></p>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>

    </div>ass="col-div-3">
    <div class="box">
        <p>67<br /><span>customers</span></p>
        <i class="fa-fa-users box-icon"></i>
    </div>
    </div>

    </div>ass="col-div-3">
    <div class="box">
        <p>88<br /><span>projects</span></p>
        <i class="fa-fa-list box-icon"></i>
    </div>
    </div>

    </div>ass="col-div-3">
    <div class="box">
        <p>99<br /><span>orders</span></p>
        <i class="fa-fa-shopping box-icon"></i>
    </div>
    </div>

    </div>ass="col-div-3">
    <div class="box">
        <p>78<br /><span>tasks</span></p>
        <i class="fa-fa-tasks box-icon"></i>
    </div>
    </div>

    <div class="clearfix"></div>
    <br /><br />

    <div class="col-div-8">
        <div class="box-8">
            <div class="content-box">
                <p>Top selling projects<span>view All</span></p>
                <br />
                <table>
                    <tr>
                        <th>company</th>
                        <th>contact</th>
                        <th>country</th>
                    </tr>
                    <tr>
                        <td>Alfriend futterkiste</td>
                        <td>Alfreds</td>
                        <td>futterkiste</td>
                    </tr>
                    <tr>
                        <td>Alfriend futterkiste</td>
                        <td>Alfreds</td>
                        <td>futterkiste</td>
                    </tr>
                    <tr>
                        <td>Alfriend futterkiste</td>
                        <td>Alfreds</td>
                        <td>futterkiste</td>
                    </tr>
                    <tr>
                        <td>Alfriend futterkiste</td>
                        <td>Alfreds</td>
                        <td>futterkiste</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <div class="col-div-4">
        <div class="box-4">
            <div class="content-box">
                <p>Total sale<span>view All</span></p>
                <div class="circle-wrap">
                    <div class="circle">
                        <div class="mask full">
                            <div class="fill"></div>
                        </div>
                        <div class="mask half">
                            <div class="fill"></div>
                        </div>
                        <div class="inside-circle">70%</div>
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
            $("#mysidenav").css('width', '70px');
            $("#main").css('margin-left', '70px');
            $(".logo").css('visibility', 'hidden');
            $(".logo span").css('visibility', 'visible');
            $(".logo span").css('margin-left', '-10px');
            $(".icon-a").css('visibility', 'hidden');
            $(".icons").css('visibility', 'visible');
            $(".icons").css('margin-left', '-8px');
            $(".nav").css('display', 'non');
            $(".nav2").css('display', 'block');
        });
        $(".nav2").click(function () {
            $("#mysidenav").css('width', '300px');
            $("#main").css('margin-left', '300px');
            $(".logo").css('visibility', 'visible');
            $(".logo span").css('visibility', 'visible');
            $(".logo span").css('margin-left', 'visible');
            $(".icon-a").css('visibility', 'visible');
            $(".icons").css('visibility', 'visible');
            $(".icons").css('margin-left', 'visible');
            $(".nav").css('display', 'block');
            $(".nav2").css('display', 'non');
        });
    </script>
</body>

</html>