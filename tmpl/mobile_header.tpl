<header class="mkd-mobile-header" style="">
    <div class="mkd-mobile-header-inner">
        <div class="mkd-mobile-header-holder">
            <div class="mkd-vertical-align-containers">
                <div class="mkd-position-left">
                    <div class="mkd-position-left-inner">
                        <div class="mkd-mobile-logo-wrapper">
                            <a href="{$settings.site_url}/" style="height: 60px">
                                <img src="{$settings.site_url}/wp-content/uploads/logo-mobile.png" alt="mobile logo">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="mkd-position-right">
                    <div class="mkd-position-right-inner">
                        <div class="mkd-mobile-menu-opener">
                            <a href="javascript:void(0)">
                                <span class="mkd-mobile-opener-icon-holder">
                                    <span class="mkd-lines-holder">
                                        <span class="mkd-lines-holder-inner">
                                            <span class="mkd-lines line-1"></span>
                                            <span class="mkd-lines line-2"></span>
                                            <span class="mkd-lines line-3"></span>
                                            <span class="mkd-lines line-4"></span>
                                            <span class="mkd-lines line-5"></span>
                                        </span>
                                    </span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- close .mkd-vertical-align-containers -->
        </div>
        <nav class="mkd-mobile-nav">
            <div class="mkd-grid">
                <ul id="menu-main_menu-2" class="">
					<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children  has_sub"><a href="{$settings.site_url}" class=""><span>Home</span></a><span class="mobile_arrow"><i class="mkd-sub-arrow fa fa-angle-right"></i><i class="fa fa-angle-down"></i></span>
                    </li>
					<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children  has_sub"><a href="{"?a=investment"|encurl}" class=""><span>Investment</span></a><span class="mobile_arrow"><i class="mkd-sub-arrow fa fa-angle-right"></i><i class="fa fa-angle-down"></i></span>
                    </li>
					<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children  has_sub"><a href="{"?a=faq"|encurl}" class=""><span>Faq</span></a><span class="mobile_arrow"><i class="mkd-sub-arrow fa fa-angle-right"></i><i class="fa fa-angle-down"></i></span>
                    </li>
					<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children  has_sub"><a href="{"?a=affiliate"|encurl}" class=""><span>Affiliate</span></a><span class="mobile_arrow"><i class="mkd-sub-arrow fa fa-angle-right"></i><i class="fa fa-angle-down"></i></span>
                    </li>
					<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children  has_sub"><a href="{"?a=news"|encurl}" class=""><span>News</span></a><span class="mobile_arrow"><i class="mkd-sub-arrow fa fa-angle-right"></i><i class="fa fa-angle-down"></i></span>
                    </li>
					<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children  has_sub"><a href="{"?a=reviews_share"|encurl}" class=""><span>Reviews and Share</span></a><span class="mobile_arrow"><i class="mkd-sub-arrow fa fa-angle-right"></i><i class="fa fa-angle-down"></i></span>
                    </li>
					<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-has-children  has_sub">
                        <a href="{"?a=about_us"|encurl}" class=""><span>About Us</span></a>
                        <span class="mobile_arrow"><i class="mkd-sub-arrow fa fa-angle-right"></i><i class="fa fa-angle-down"></i></span>
                        <ul class="sub_menu">
                        	<li class="menu-item menu-item-type-post_type menu-item-object-page "><a href="{"?a=terms_condition"|encurl}" class=""><span>Terms And Condition</span></a></li>
                        	<li class="menu-item menu-item-type-post_type menu-item-object-page "><a href="{"?a=rate_us"|encurl}" class=""><span>Rate Us</span></a></li>
                        	<li class="menu-item menu-item-type-post_type menu-item-object-page "><a href="{"?a=management_team"|encurl}" class=""><span>Management Team</span></a></li>
                        	<li class="menu-item menu-item-type-post_type menu-item-object-page "><a href="{"?a=support"|encurl}" class=""><span>Support</span></a></li>
                        </ul>
					</li>
                    {if $userinfo.logged != 1}
					<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children  has_sub"><a href="{"?a=signup"|encurl}" class=""><span>Sign up</span></a><span class="mobile_arrow"><i class="mkd-sub-arrow fa fa-angle-right"></i><i class="fa fa-angle-down"></i></span>
                    </li>
					<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children  has_sub"><a href="{"?a=login"|encurl}" class=""><span>Login</span></a><span class="mobile_arrow"><i class="mkd-sub-arrow fa fa-angle-right"></i><i class="fa fa-angle-down"></i></span>
                    </li>
                    {else}
					<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children  has_sub"><a href="{"?a=logout"|encurl}" class=""><span>Logout</span></a><span class="mobile_arrow"><i class="mkd-sub-arrow fa fa-angle-right"></i><i class="fa fa-angle-down"></i></span>
                    </li>
                    {/if}
                </ul>
            </div>
        </nav>
    </div>
</header>