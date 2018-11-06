{include file="header.tpl"}

{literal}
<script language=javascript>
    function checkform() {
    if (document.forgotform.email.value == '') {
        alert("Please type your username or email!");
        document.forgotform.email.focus();
        return false;
    }
    return true;
    }
</script>
{/literal}

<div data-mkd-parallax-speed="1" class="vc_row wpb_row vc_row-fluid mkd-section vc_custom_1447839811894 mkd-content-aligment-left mkd-grid-section" style="padding-top: 20px">
    <div class="clearfix mkd-section-inner">
        <div class="mkd-section-inner-margin clearfix">
            <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-offset-4 vc_col-md-4 vc_col-lg-offset-4 vc_col-md-4">
                <div class="wpb_wrapper">
                    <div class="mkd-separator-holder clearfix  mkd-separator-center mkd-separator-full-width" style="margin-top: -9px; margin-bottom: 0px; height: 0px">
                        <div class="mkd-separator" style="border-color: rgba(255,255,255,0.01);border-bottom-width: 0px"></div>
                    </div>
                <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                <div class="mkd-section-inner-margin clearfix">
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <h2>Forgot your password:</h2>
                            </div>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
                    <div class="mkd-section-inner-margin clearfix">
                        <div class="wpb_wrapper">                            
                            {if $errors.turing_image}
                            Invalid turing image<br><br>
                            {/if}
                            {if $found_records == 2}
                            Your accound was found. Please check your e-mail address and follow confirm URL to reset your password.
                            <br><br>
                            {else}
                            {if $found_records == 0}
                            No accounts found for provided info.
                            <br><br>
                            {elseif $found_records == 1}
                            Request was confirmed. Login and password was sent to your email address.
                            <br><br>
                            {/if}
                            <form method=post name=forgotform onsubmit="return checkform();">
                                <input type=hidden name=a value="forgot_password">
                                <input type=hidden name=action value="forgot_password">
                                <table cellspacing=0 cellpadding=2 border=0>
                                    <tr>
                                        <td>Type your username or e-mail:</td>
                                        <td><input type=text name='email' value="{$frm.email|escape:htmlall}" class=inpts size=30></td>
                                    </tr>
                                    {if $ti.check.forgot_password}
                                    <tr>
                                        <td class=menutxt align=right><img src="{"?a=show_validation_image&`$ti.session.name`=`$ti.session.id`&rand=`$ti.session.rand`"|encurl}"></td>
                                        <td><input type=text name=validation_number class=inpts size=15></td>
                                    </tr>
                                    {/if}
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><input type=submit value="Forgot" class=sbmt></td>
                                    </tr>
                                </table>
                            </form><br><br>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}