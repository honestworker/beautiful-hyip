{include file="header.tpl"}
{include file="account_menu.tpl"}
<div class="mkd-full-width" style="">
    <div class="mkd-full-width-inner">
        <div data-mkd-parallax-speed="1" class="account-seperator" style="">
        </div>
        <div data-mkd-parallax-speed="1" class="vc_row wpb_row vc_row-fluid mkd-section mkd-content-aligment-center mkd-grid-section" style="">
            <div class="clearfix mkd-section-inner">
                <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                <div class="mkd-section-inner-margin clearfix">
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <h2>Tell friend:</h2>
                            </div>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>                    
                    <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-4 vc_col-lg-offset-4 vc_col-md-4 vc_col-md-offset-4">
                        <div class="wpb_wrapper mkd-content-aligment-left">
                            {if $say eq 'invite_sent'}
                            Your invite/invites has been successfully sent.<br><br>
                            {/if}
                            <form action="index.php" method=post>
                                <input type=hidden name=a value=tell_friend>
                                <input type=hidden name=action value=tell_friend>
                                <input type=submit value="Set" class=sbmt>
                                <table cellspacing=0 cellpadding=2 border=0>
                                    <tr>
                                        <td>Name 1:</td>
                                        <td><input type=text name=name1 class=inpts></td>
                                        <td>Email 1:</td>
                                        <td><input type=text name=email1 class=inpts></td>
                                    </tr>
                                    <tr>
                                        <td>Name 2:</td>
                                        <td><input type=text name=name2 class=inpts></td>
                                        <td>Email 2:</td>
                                        <td><input type=text name=email2 class=inpts></td>
                                    </tr>
                                    <tr>
                                        <td>Name 3:</td>
                                        <td><input type=text name=name3 class=inpts></td>
                                        <td>Email 3:</td>
                                        <td><input type=text name=email3 class=inpts></td>
                                    </tr>
                                    <tr>
                                        <td colspan=4 align=center><input type=submit value="Send" class=sbmt></td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                        <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>  
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{include file="footer.tpl"}