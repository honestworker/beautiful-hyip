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
                                <h2>Advanced login security settings:</h2>
                            </div>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
                    <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-4 vc_col-lg-offset-4 vc_col-md-4 vc_col-md-offset-4">
                        <div class="wpb_wrapper mkd-content-aligment-left">
                            <form method="post">
                                <input type="hidden" name="a" value="security">
                                <input type="hidden" name="action" value="save">
                                Detect IP Address Change Sensitivity<br>
                                <input type=radio name=ip value=disabled {if $security.detect_ip == 'disabled'}checked{/if}>Disabled<br>
                                <input type=radio name=ip value=medium {if $security.detect_ip == 'medium'}checked{/if}>Medium<br>
                                <input type=radio name=ip value=high {if $security.detect_ip == 'high'}checked{/if}>High<br>
                                <input type=radio name=ip value=always {if $security.detect_ip == 'always'}checked{/if}>Paranoic<br><br>
                                Detect Browser Change<br>
                                <input type=radio name=browser value=disabled {if $security.detect_browser == 'disabled'}checked{/if}>Disabled<br>
                                <input type=radio name=browser value=enabled {if $security.detect_browser == 'enabled'}checked{/if}>Enabled<br><br>
                                <input type=submit value="Set" class=sbmt>
                            </form>
                        </div>
                    </div>
                    {if $settings.use_tfa}
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <h2>Two Factor Authentication</h2>
                            </div>
                        </div>
                    </div>
                    <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-4 vc_col-lg-offset-4 vc_col-md-4 vc_col-md-offset-4">
                        <div class="wpb_wrapper mkd-content-aligment-left">
                            <form method=post name=mainform>
                                <input type=hidden name=a value="security">
                                <input type=hidden name=action value="tfa_save">
                                <input type=hidden name=time>
                                {if $errors.invalid_tfa_code}
                                <b style=color:red>Invalid code.</b><br>
                                {/if}
                                {if $errors.invalid_tfa_secret}
                                <b style=color:red>Invalid Secret.</b><br>
                                {/if}
                                {if $tfa_enabled}
                                <input type="checkbox" name="tfa_on_login" value=1 {if $tfa_settings.login}checked{/if}> on Login<br>
                                <input type="checkbox" name="tfa_on_edit_account" value=1 {if $tfa_settings.edit_account}checked{/if}> on Edit Account<br>
                                <input type="checkbox" name="tfa_on_withdraw" value=1 {if $tfa_settings.withdraw}checked{/if}> on Withdraw<br>
                                <input type="checkbox" name="tfa_disable" value=1> <b style=color:red>Disable Two Factor Authentication (not recommended)</b><br>
                                <br>
                                Confirm by typing code: <input type=text name="code" class=inpts> <input type=submit value="Update" class=sbmt>
                                {else}
                                1. Install <a href="http://m.google.com/authenticator" targe=_blank>Google Authenticator</a> on your mobile device.<br>
                                2. Your Secret Code is: <b>{$tfa_secret}</b> <input type=hidden name="tfa_secret" value="{$tfa_secret}"><br>
                                <img src="{$tfa_secret_url}"><br>
                                3. Please enter two factor token from Google Authenticator to verify correct setup:<br> 
                                <input type=text name="code" class=inpts> <input type=submit value="Enable" class=sbmt>
                                {/if}
                            </form>
                        </div>
                        {literal}
                        <script language=javascript>
                            document.mainform.time.value = (new Date()).getTime();

                            function checkform() {
                            if (!document.mainform.code.value.match(/^[0-9]{6}$/)) {
                                alert("Please type code!");
                                document.mainform.code.focus();
                                return false;
                            }
                            return true;
                            }
                        </script>
                        {/literal}
                        {/if} {* use_tfa *}
                    </div>
                </div>
                <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}