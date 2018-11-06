{include file="header.tpl"}

{literal}
<script language=javascript>
function checkform() {
  if (document.mainform.username.value=='') {
    alert("Please type your username!");
    document.mainform.username.focus();
    return false;
  }
  if (document.mainform.password.value=='') {
    alert("Please type your password!");
    document.mainform.password.focus();
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
                    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
                    {if $frm.say eq 'invalid_login'}
                        <h3>Login error:</h3>
                        <p>Your login or password or turing image code is wrong. Please check this information.</p>
                    {/if}
                    <div class="screen-reader-response"></div>
                    <form method=post name=mainform onsubmit="return checkform()">
                        <input type=hidden name=a value='do_login'>
                        <input type=hidden name=follow value='{$frm.follow}'>
                        <input type=hidden name=follow_id value='{$frm.follow_id}'>
                        <p><span class="wpcf7-form-control-wrap username">Username:<input type="text" name="username" value='{$frm.username|escape:"html"}' size="40" autofocus="autofocus" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Your Name*"></span></p>
                        <p><span class="wpcf7-form-control-wrap password">Password:<input type="password" name="password" value="{$frm.email|escape:htmlall}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Your Password*"></span></p>
                        {if $ti.check.login}
                        <img src="{"?a=show_validation_image&`$ti.session.name`=`$ti.session.id`&rand=`$ti.session.rand`"|encurl}">                        
                        <p><span class="wpcf7-form-control-wrap validation_number"><input type="text" name="validation_number" size="40" autofocus="autofocus" class="inpts wpcf7-form-control wpcf7-text"></span></p>
                        </tr>
                        {/if}
                        <input type="submit" value="Login" class="wpcf7-form-control wpcf7-submit">
                    </form>
                    or <a href="{"?a=forgot_password"|encurl}">remember your login information</a>.
                    <div class="vc_empty_space" style="height: 55px"><span class="vc_empty_space_inner"></span></div>
                </div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}