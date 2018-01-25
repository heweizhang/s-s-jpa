<!DOCTYPE html>
<html>
<head>
    <title>代理商控制面板-微商管理系统</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta content='text/html;charset=utf-8' http-equiv='content-type'>
    <link href="/assets/stylesheets/bootstrap/bootstrap.css" media="all" rel="stylesheet" type="text/css" />
    <link href="//cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link href="/assets/stylesheets/light-theme.css" media="all" id="color-settings-body-color" rel="stylesheet" type="text/css" />
    <link href="/assets/stylesheets/theme-colors.css" media="all" rel="stylesheet" type="text/css" />
    <link href="/assets/stylesheets/demo.css" media="all" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="/assets/javascripts/ie/html5shiv.js" type="text/javascript"></script>
    <script src="/assets/javascripts/ie/respond.min.js" type="text/javascript"></script>
    <![endif]-->
</head>
<body class='contrast-red '>
<header>
    <nav class='navbar navbar-default'>
        <a class='navbar-brand' href='/e/member/cp/'>控制面板</a>
        <a class='toggle-nav btn pull-left' href='#'>
            <i class='fa-reorder'></i>
        </a>
        <ul class='nav'>
            <li class='dropdown light only-icon'>
                <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                    <i class='fa-cog'></i>
                </a>
                <ul class='dropdown-menu color-settings'>
                    <li class='color-settings-body-color'>
                        <div class='color-title'>主题色</div>
                        <a data-change-to='/assets/stylesheets/light-theme.css' href='#'>
                            浅色
                            <small>(默认)</small>
                        </a>
                        <a data-change-to='/assets/stylesheets/dark-theme.css' href='#'>
                            深色
                        </a>
                        <a data-change-to='/assets/stylesheets/dark-blue-theme.css' href='#'>
                            深蓝
                        </a>
                    </li>
                    <li class='divider'></li>
                    <li class='color-settings-contrast-color'>
                        <div class='color-title'>对比色</div>
                        <a data-change-to="contrast-red" href="#"><i class='fa-cog text-red'></i>
                            红色
                        </a>

                        <a data-change-to="contrast-blue" href="#"><i class='fa-cog text-blue'></i>
                            蓝色
                        </a>

                        <a data-change-to="contrast-orange" href="#"><i class='fa-cog text-orange'></i>
                            黄色
                        </a>

                        <a data-change-to="contrast-purple" href="#"><i class='fa-cog text-purple'></i>
                            紫色
                        </a>

                        <a data-change-to="contrast-green" href="#"><i class='fa-cog text-green'></i>
                            青色
                        </a>

                        <a data-change-to="contrast-muted" href="#"><i class='fa-cog text-muted'></i>
                            灰色
                        </a>

                        <a data-change-to="contrast-fb" href="#"><i class='fa-cog text-fb'></i>
                            金色
                        </a>

                        <a data-change-to="contrast-dark" href="#"><i class='fa-cog text-dark'></i>
                            深灰
                        </a>

                        <a data-change-to="contrast-pink" href="#"><i class='fa-cog text-pink'></i>
                            粉色
                        </a>

                        <a data-change-to="contrast-grass-green" href="#"><i class='fa-cog text-grass-green'></i>
                            草绿
                        </a>

                        <a data-change-to="contrast-sea-blue" href="#"><i class='fa-cog text-sea-blue'></i>
                            深蓝
                        </a>

                        <a data-change-to="contrast-banana" href="#"><i class='fa-cog text-banana'></i>
                            青蓝
                        </a>

                        <a data-change-to="contrast-dark-orange" href="#"><i class='fa-cog text-dark-orange'></i>
                            橙色
                        </a>

                        <a data-change-to="contrast-brown" href="#"><i class='fa-cog text-brown'></i>
                            棕色
                        </a>

                    </li>
                </ul>
            </li>

            <li class='dropdown medium only-icon widget'>
                <a class='dropdown-toggle' href='/e/member/msg'>
                    <i class='fa-envelope-o'></i>
                    <div class='label'></div>
                </a>
            </li>
            <li class='dropdown dark user-menu'>
                <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                    <span class='user-name'>12345678901</span>
                    <b class='caret'></b>
                </a>
                <ul class='dropdown-menu'>
                    <li>
                        <a href='/e/member/EditInfo/'>
                            <i class='fa-user'></i>
                            修改资料
                        </a>
                    </li>
                    <li>
                        <a href='/e/member/EditInfo/EditSafeInfo.php'>
                            <i class='fa-lock'></i>
                            修改密码
                        </a>
                    </li>
                    <li class='divider'></li>
                    <li><a href="/e/member/doaction.php?enews=exit&ecmsfrom=/e/member/login/" onClick="return confirm('确认要退出?');"><i class='fa-sign-out'></i>退出</a></li>
                </ul>
            </li>
        </ul>
    </nav>

</header>
<div id='wrapper'>
    <div id='main-nav-bg'></div>
    <nav id='main-nav'>
        <div class='navigation'>
            <ul class='nav nav-stacked'>
                <li class=''>
                    <a href='/e/member/zhengshu/'>
                        <i class='fa-book'></i>
                        <span>授权证书</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/extend/spread/spcode.php'>
                        <i class='fa-sitemap'></i>
                        <span>代理邀请</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/extend/spread/spindex.php'>
                        <i class='fa-group'></i>
                        <span>我的下级</span>
                    </a>
                </li>

                <li class=''>
                    <a href='/e/extend/spread/myindex.php'>
                        <i class='fa-thumbs-up'></i>
                        <span>我的推荐</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/ShopSys/ListShop/'>
                        <i class='fa-truck'></i>
                        <span>我要订货</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/ShopSys/ListDd/'>
                        <i class='fa-list-ul'></i>
                        <span>我的订单</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/ShopSys/DListDd/'>
                        <i class='fa-list-ol'></i>
                        <span>下级订单</span>
                    </a>
                </li>
                <li class=''>
                    <a href="/e/ShopSys/buycar/" target="_blank">
                        <i class='fa-shopping-cart'></i>
                        <span>我的购物车</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/ShopSys/address/ListAddress.php'>
                        <i class='fa-map-marker'></i>
                        <span>收货地址</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/payapi/'>
                        <i class='fa-jpy'></i>
                        <span>在线充值</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/member/downbak/'>
                        <i class='fa-list-alt'></i>
                        <span>财务记录</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/extend/commission/index.php'>
                        <i class='fa-indent'></i>
                        <span>返利日志</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/extend/commission/pay.php'>
                        <i class='fa-outdent'></i>
                        <span>提现/日志</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/extend/spread/fenlog.php'>
                        <i class='fa-list'></i>
                        <span>积分日志</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/member/gbook/'>
                        <i class='fa-commenting'></i>
                        <span>投诉建议</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/member/EditInfo/'>
                        <i class='fa-edit'></i>
                        <span>修改资料</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/member/EditInfo/EditSafeInfo.php'>
                        <i class='fa-lock'></i>
                        <span>修改密码</span>
                    </a>
                </li>
                <li class=''>
                    <a href='/e/member/doaction.php?enews=exit&ecmsfrom=/e/member/login/' onClick="return confirm('确认要退出?');">
                        <i class='fa-sign-out'></i>
                        <span>退出登陆</span>
                    </a>
                </li>
            </ul>
        </div>
    </nav>
    <section id='content'>
        <div class='container'>
            <div class='row' id='content-wrapper'>
                <div class='col-xs-12'><br />
                    <div class='alert alert-info alert-dismissable'>
                        <a class='close' data-dismiss='alert' href='#'>&times;</a>
                        <i class='fa-bullhorn'></i>
                        <a href="/e/action/ShowInfo.php?classid=13&id=2" target="_blank" style="color:#F00">代理商公告</a>
                    </div>
                    <div class='row box'>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='../../space/?username=12345678901' target="_blank">
                                    <div class='header'>姓名：张三</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='../../space/?username=12345678901' target="_blank">
                                    <div class='header'>微信：flashline</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='../../space/?username=12345678901' target="_blank">
                                    <div class='header'>等级：全国总代</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='#'>
                                    <div class='header'>注册：2017-07-09</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='../downbak/'>
                                    <div class='header'>余额：34041.00 ￥
                                    </div></a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/extend/spread/fenlog.php'>
                                    <div class='header'>积分：32</div>
                                </a>
                            </div>
                        </div>
                    </div>


                    <div class='row box'>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/member/zhengshu/'>
                                    <div class='header'><i class='fa-book'></i> 授权证书</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/extend/spread/spcode.php'>
                                    <div class='header'><i class='fa-sitemap'></i> 代理邀请</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/extend/spread/spindex.php'>
                                    <div class='header'><i class='fa-group'></i> 我的下级</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/extend/spread/myindex.php'>
                                    <div class='header'><i class='fa-thumbs-up'></i> 我的推荐</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/ShopSys/ListDd/'>
                                    <div class='header'><i class='fa-list-ul'></i> 我的订单</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/ShopSys/DListDd/'>
                                    <div class='header'><i class='fa-list-ol'></i> 下级订单</div></a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/ShopSys/ListShop/'>
                                    <div class='header'><i class='fa-truck'></i> 我要订货</div></a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/ShopSys/address/ListAddress.php'>
                                    <div class='header'><i class='fa-map-marker'></i> 收货地址</div></a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/payapi/'>
                                    <div class='header'><i class='fa-jpy'></i> 在线充值</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/member/downbak/'>
                                    <div class='header'><i class='fa-list-alt'></i> 财务记录</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/extend/commission/index.php'>
                                    <div class='header'><i class='fa-indent'></i> 返利日志</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/extend/commission/pay.php'>
                                    <div class='header'><i class='fa-outdent'></i> 提现/日志</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/extend/spread/fenlog.php'>
                                    <div class='header'><i class='fa-list'></i> 积分/兑换</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/member/gbook/'>
                                    <div class='header'><i class='fa-commenting'></i> 投诉建议</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='../../space/?username=12345678901' target="_blank">
                                    <div class='header'><i class='fa-home'></i> 我的主页</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/member/EditInfo/'>
                                    <div class='header'><i class='fa-edit'></i> 修改资料</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/member/EditInfo/EditSafeInfo.php'>
                                    <div class='header'><i class='fa-lock'></i> 修改密码</div>
                                </a>
                            </div>
                        </div>
                        <div class='col-xs-6 col-sm-2'>
                            <div class='box-content box-statistic text-center'>
                                <a href='/e/member/doaction.php?enews=exit&ecmsfrom=/e/member/login/' onClick="return confirm('确认要退出?');">
                                    <div class='header'><i class='fa-sign-in'></i> 退出登陆</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script src="/assets/javascripts/jquery/jquery.min.js" type="text/javascript"></script>
<script src="/assets/javascripts/jquery/jquery.mobile.custom.min.js" type="text/javascript"></script>
<script src="/assets/javascripts/jquery/jquery-migrate.min.js" type="text/javascript"></script>
<script src="/assets/javascripts/jquery/jquery-ui.min.js" type="text/javascript"></script>
<script src="/assets/javascripts/plugins/jquery_ui_touch_punch/jquery.ui.touch-punch.min.js" type="text/javascript"></script>
<script src="/assets/javascripts/bootstrap/bootstrap.js" type="text/javascript"></script>
<script src="/assets/javascripts/plugins/modernizr/modernizr.min.js" type="text/javascript"></script>
<script src="/assets/javascripts/plugins/retina/retina.js" type="text/javascript"></script>
<script src="/assets/javascripts/theme.js" type="text/javascript"></script>
<script src="/assets/javascripts/demo.js" type="text/javascript"></script>
</body>
</html>