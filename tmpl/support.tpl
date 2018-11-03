{include file="header.tpl"}
<div data-mkd-parallax-speed="1" class="vc_row wpb_row vc_row-fluid mkd-section vc_custom_1447839811894 mkd-content-aligment-left mkd-grid-section" style="padding-top: 20px">
    <div class="clearfix mkd-section-inner">
        <div class="mkd-section-inner-margin clearfix">
            <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-4 vc_col-md-4">
                <div class="wpb_wrapper">
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <h2>Our Offices</h2>
                        </div>
                    </div>
                    <div class="mkd-separator-holder clearfix  mkd-separator-center mkd-separator-full-width" style="margin-top: -9px; margin-bottom: 0px; height: 0px">
                        <div class="mkd-separator" style="border-color: rgba(255,255,255,0.01);border-bottom-width: 0px"></div>
                    </div>
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <h5>free consultation</h5>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
                    <div class="wpb_single_image wpb_content_element vc_align_left">
                        <figure class="wpb_wrapper vc_figure">
                            <div class="vc_single_image-wrapper  vc_box_border_grey"><img width="600" height="348" src="{$settings.site_url}/wp-content/uploads/cwgm-img.jpg" class="vc_single_image-img attachment-full" alt="a"></div>
                        </figure>
                    </div>
                    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <p>3020 Stressford Street, Suite 180, Houston, TX 7108</p>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 55px"><span class="vc_empty_space_inner"></span></div>
                </div>
            </div>
            <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-4 vc_col-md-4">
                <div class="wpb_wrapper">
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <h2>Support Now</h2>
                        </div>
                    </div>
                    <div class="mkd-separator-holder clearfix  mkd-separator-center mkd-separator-full-width" style="margin-top: -9px; margin-bottom: 0px; height: 0px">
                        <div class="mkd-separator" style="border-color: rgba(255,255,255,0.01);border-bottom-width: 0px"></div>
                    </div>
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <h5>protecting rights</h5>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
                    {if $say eq 'send'}
                        <p>Message has been successfully sent. We will back to you in next 24 hours. Thank you.</p>
                    {else}
                        <script language=javascript>
                        {if $userinfo.logged == 1}
                        {literal}
                        function checkform() { 
                        if (document.mainform.message.value == '') {
                            alert("Please type your message!");
                            document.mainform.message.focus();
                            return false;
                        }
                        return true;
                        }
                        {/literal}
                        {else}
                        {literal}
                        function checkform() {
                        if (document.mainform.name.value == '') {
                            alert("Please type your full name!");
                            document.mainform.name.focus();
                            return false;
                        }
                        if (document.mainform.email.value == '') {
                            alert("Please enter your e-mail address!");
                            document.mainform.email.focus();
                            return false;
                        }
                        if (document.mainform.message.value == '') {
                            alert("Please type your message!");
                            document.mainform.message.focus();
                            return false;
                        }
                        return true;
                        }
                        {/literal}
                        {/if}
                        </script>
                        <div class="screen-reader-response"></div>
                        <form method="post" name="mainform" onsubmit="return checkform()">
                            <input type="hidden" name="a" value="support">
                            <input type="hidden" name="action" value="send">
                            {if $errors}
                            <ul style="color:red">
                            {if $errors.turing_image == 1}
                                <li>Invalid turing image</li>
                            {/if}
                            {if $errors.invalid_email == 1}
                                <li>Invalid email address</li>
                            {/if}
                            </ul>
                            {/if}
                            {if $userinfo.logged}
                                <p><b>{$userinfo.name}</b></p>
                                <p><b>{$userinfo.email}</b></p>
                            {else}
                                <p><span class="wpcf7-form-control-wrap name"><input type="text" name="name" value="{$frm.name|escape:htmlall}" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Your Full Name*"></span></p>
                                <p><span class="wpcf7-form-control-wrap email"><input type="email" name="email" value="{$frm.email|escape:htmlall}" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="Your E-mail Address*"></span></p>
                            {/if}
                            <p><span class="wpcf7-form-control-wrap message"><textarea name="message" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false" placeholder="Describe your case briefly.">{$frm.message|escape:htmlall}</textarea></span></p>
                            {if $ti.check.support == 1}
                            <img src="{"?a=show_validation_image&`$userinfo.session_name`=`$userinfo.session_id`&rand=`$userinfo.rand`"|encurl}">
                            <input type="text" name="validation_number" class=inpts size=30>
                            {/if}
                            <input type="submit" value="Send Now" class="wpcf7-form-control wpcf7-submit">
                        </form>
                    {/if}
                    <div class="vc_empty_space" style="height: 55px"><span class="vc_empty_space_inner"></span></div>
                </div>
            </div>
            <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-4 vc_col-md-4">
                <div class="wpb_wrapper">
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <h2>Support Now</h2>
                        </div>
                    </div>
                    <div class="mkd-separator-holder clearfix  mkd-separator-center mkd-separator-full-width" style="margin-top: -9px; margin-bottom: 0px; height: 0px">
                        <div class="mkd-separator" style="border-color: rgba(255,255,255,0.01);border-bottom-width: 0px"></div>
                    </div>

                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <h5>protecting&nbsp;property</h5>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 14px"><span class="vc_empty_space_inner"></span></div>
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <p>Never let the future disturb you. You will meet it, if you have to, with the same weapons of reason which today arm you against. Never let the future disturb you. You will meet it, if you have to, with the same weapons of reason.</p>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 22px"><span class="vc_empty_space_inner"></span></div>
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <p><span style="color: #222222;">Support:</span> <span style="color: #c18f59;">support@yourwebsite.com</span></p>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 3px"><span class="vc_empty_space_inner"></span></div>
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <p><span style="color: #222222;">Webmaster:</span> <span style="color: #c18f59;">webmaster@yourwebsite.com</span></p>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 50px"><span class="vc_empty_space_inner"></span></div>
                    <div class="mkd-elements-holder mkd-two-columns mkd-responsive-mode-1280">
                        <div class="mkd-elements-holder-item mkd-horizontal-alignment-left">
                            <div class="mkd-elements-holder-item-inner">
                                <div class="mkd-elements-holder-item-content mkd-elements-holder-custom-877387" style="padding: 0 5px 0 0">
                                    <div class="mkd-icon-list-item">
                                        <div class="mkd-icon-list-icon-holder">
                                            <div class="mkd-icon-list-icon-holder-inner clearfix" data-icon-size="23">
                                                <i class="mkd-icon-simple-line-icon icon-clock " style="color:#c18f59;font-size:23px"></i> </div>
                                        </div>
                                        <p class="mkd-icon-list-text" style="color:#222222;font-size:27px;padding-left:8px" data-title-size="27"> 8:00-19:00</p>
                                    </div>
                                    <div class="vc_empty_space" style="height: 2px"><span class="vc_empty_space_inner"></span></div>

                                    <div class="wpb_text_column wpb_content_element ">
                                        <div class="wpb_wrapper">
                                            <p>Call For Free Consultation</p>
                                        </div>
                                    </div>
                                    <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                                </div>
                            </div>
                        </div>
                        <div class="mkd-elements-holder-item mkd-horizontal-alignment-left">
                            <div class="mkd-elements-holder-item-inner">
                                <div class="mkd-elements-holder-item-content mkd-elements-holder-custom-718125" style="padding: 0 5px 0 0">
                                    <div class="mkd-icon-list-item">
                                        <div class="mkd-icon-list-icon-holder">
                                            <div class="mkd-icon-list-icon-holder-inner clearfix" data-icon-size="23">
                                                <i class="mkd-icon-simple-line-icon icon-earphones-alt " style="color:#c18f59;font-size:23px"></i> </div>
                                        </div>
                                        <p class="mkd-icon-list-text" style="color:#222222;font-size:27px;padding-left:8px" data-title-size="27"> 975.789.098</p>
                                    </div>
                                    <div class="vc_empty_space" style="height: 2px"><span class="vc_empty_space_inner"></span></div>

                                    <div class="wpb_text_column wpb_content_element ">
                                        <div class="wpb_wrapper">
                                            <p>Opening Hours Mon. – Fri.</p>
                                        </div>
                                    </div>
                                    <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 25px"><span class="vc_empty_space_inner"></span></div>
                </div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}