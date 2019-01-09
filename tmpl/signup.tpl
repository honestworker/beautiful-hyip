{include file="header.tpl"}
<div data-mkd-parallax-speed="1" class="vc_row wpb_row vc_row-fluid mkd-section vc_custom_1447839811894 mkd-content-aligment-left mkd-grid-section" style="padding-top: 20px; background-image: url(../images/custom/bitcoin-white.jpg); background-size: cover; background-repeat: no-repeat;">
    <div class="clearfix mkd-section-inner">
        <div class="mkd-section-inner-margin clearfix">
            <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-offset-4 vc_col-md-4 vc_col-lg-offset-4 vc_col-md-4">
                <div class="wpb_wrapper">
                    <div class="wpb_text_column wpb_content_element">
                        <div class="wpb_wrapper">
                            <h2>Registration at {$settings.site_name}:</h2>
                        </div>
                    </div>
                    <div class="mkd-separator-holder clearfix  mkd-separator-center mkd-separator-full-width" style="margin-top: -9px; margin-bottom: 0px; height: 0px">
                        <div class="mkd-separator" style="border-color: rgba(255,255,255,0.01);border-bottom-width: 0px"></div>
                    </div>
                    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
                    {if $deny_registration}
                    <h3>We are closed for new registrations now.</h3><br>
                    {elseif $settings.use_referal_program && $settings.force_upline && !$referer && !$settings.get_rand_ref}
                    <h3>You do not have a upline. Our system require a upline for each user.</h3><br>
                    {else}
                    {literal}
                    <script language=javascript>
                        function checkform() {
                        if (document.regform.fullname.value == '') {
                            alert("Please enter your full name!");
                            document.regform.fullname.focus();
                            return false;
                        }
                        {/literal}
                        {if $settings.use_user_location == 1}
                        {literal}
                        if (document.regform.address.value == '') {
                            alert("Please enter your address!");
                            document.regform.address.focus();
                            return false;
                        }
                        if (document.regform.city.value == '') {
                            alert("Please enter your city!");
                            document.regform.city.focus();
                            return false;
                        }
                        if (document.regform.state.value == '') {
                            alert("Please enter your state!");
                            document.regform.state.focus();
                            return false;
                        }
                        if (document.regform.zip.value == '') {
                            alert("Please enter your ZIP!");
                            document.regform.zip.focus();
                            return false;
                        }
                        if (document.regform.country.options[document.regform.country.selectedIndex].text == '--SELECT--') {
                            alert("Please choose your country!");
                            document.regform.country.focus();
                            return false;
                        }
                        {/literal}
                        {/if}
                        {literal}
                        if (document.regform.username.value == '') {
                            alert("Please enter your username!");
                            document.regform.username.focus();
                            return false;
                        }
                        if (!document.regform.username.value.match(/^[A-Za-z0-9_\-]+$/)) {
                            alert("For username you should use English letters and digits only!");
                            document.regform.username.focus();
                            return false;
                        }
                        if (document.regform.password.value == '') {
                            alert("Please enter your password!");
                            document.regform.password.focus();
                            return false;
                        }
                        if (document.regform.password.value != document.regform.password2.value) {
                            alert("Please check your password!");
                            document.regform.password2.focus();
                            return false;
                        }
                        {/literal}
                        {if $settings.use_transaction_code}
                        {literal}
                        if (document.regform.transaction_code.value == '') {
                            alert("Please enter your transaction code!");
                            document.regform.transaction_code.focus();
                            return false;
                        }
                        if (document.regform.transaction_code.value != document.regform.transaction_code2.value) {
                            alert("Please check your transaction code!");
                            document.regform.transaction_code2.focus();
                            return false;
                        }
                        {/literal}
                        {/if}
                        {literal}
                        if (document.regform.email.value == '') {
                            alert("Please enter your e-mail address!");
                            document.regform.email.focus();
                            return false;
                        }
                        if (document.regform.email.value != document.regform.email1.value) {
                            alert("Please retupe your e-mail!");
                            document.regform.email.focus();
                            return false;
                        }

                        for (i in document.regform.elements) {
                            f = document.regform.elements[i];
                            if (f.name && f.name.match(/^pay_account/)) {
                                if (f.value == '') continue;
                                var notice = f.getAttribute('data-validate-notice');
                                var invalid = 0;
                                if (f.getAttribute('data-validate') == 'regexp') {
                                    var re = new RegExp(f.getAttribute('data-validate-regexp'));
                                    if (!f.value.match(re)) {
                                    invalid = 1;
                                    }
                                } else if (f.getAttribute('data-validate') == 'email') {
                                    var re = /^[^\@]+\@[^\@]+\.\w{2,4}$/;
                                    if (!f.value.match(re)) {
                                    invalid = 1;
                                    }
                                }
                                if (invalid) {
                                    alert('Invalid account format. Expected '+notice);
                                    f.focus();
                                    return false;
                                }
                            }
                        }

                        if (document.regform.agree.checked == false) {
                            alert("You have to agree with the Terms and Conditions!");
                            return false;
                        }

                        return true;
                        }

                        function IsNumeric(sText) {
                        var ValidChars = "0123456789";
                        var IsNumber=true;
                        var Char;
                        if (sText == '') return false;
                        for (i = 0; i < sText.length && IsNumber == true; i++) { 
                            Char = sText.charAt(i); 
                            if (ValidChars.indexOf(Char) == -1) {
                            IsNumber = false;
                            }
                        }
                        return IsNumber;
                        }
                    </script>
                    {/literal}
                    
                        {if $errors}
                            <ul style="color:red">
                            {section name=e loop=$errors} 
                                {if $errors[e] eq 'full_name'}
                                    <li>Please enter your full name!</li>
                                {/if}
                                {if $errors[e] eq 'address'}
                                    <li>Please enter your address!</li>
                                {/if}
                                {if $errors[e] eq 'city'}
                                    <li>Please enter your city!</li>
                                {/if}
                                {if $errors[e] eq 'state'}
                                    <li>Please enter your state!</li>
                                {/if}
                                {if $errors[e] eq 'zip'}
                                    <li>Please enter your zip!</li>
                                {/if}
                                {if $errors[e] eq 'country'}
                                    <li>Please choose your country!</li>
                                {/if}
                                {if $errors[e] eq 'username'}
                                    <li>Please enter valid username! It should contains English letters and digits only.</li>
                                {/if}
                                {if $errors[e] eq 'username_exists'}
                                    <li>Sorry, such user already exists! Please try another username. </li>
                                {/if}
                                {if $errors[e] eq 'email_exists'}
                                    <li>Sorry, such email already exists! Please try another email. </li>
                                {/if} 
                                {if $errors[e] eq 'password'} 
                                    <li>Please enter a password!</li>
                                {/if}
                                {if $errors[e] eq 'password_confirm'}
                                    <li>Please check your password!</li>
                                {/if}
                                {if $errors[e] eq 'password_too_small'}
                                    <li>The password you provided is too small, please enter at least {$settings.min_user_password_length} characters!</li>
                                {/if} 
                                {if $errors[e] eq 'transaction_code'} 
                                    <li>Please enter the Transaction Code!</li>
                                {/if} 
                                {if $errors[e] eq 'transaction_code_confirm'} 
                                    <li>Please check your Transaction Code!</li>
                                {/if}
                                {if $errors[e] eq 'transaction_code_too_small'}
                                    <li>The Transaction Code you provided is too small, please enter at least {$settings.min_user_password_length} characters!</li>
                                {/if}
                                {if $errors[e] eq 'transaction_code_vs_password'} 
                                    <li>The Transaction Code should differ from the Password!</li>
                                {/if}
                                {if $errors[e] eq 'email'} 
                                    <li>Please enter your e-mail!</li>
                                {/if}
                                {if $errors[e] eq 'email2'} 
                                    <li>Please check your email!</li>
                                {/if}
                                {if $errors[e] eq 'agree'}
                                    <li>You have to agree with the Terms and Conditions!</li>
                                {/if}
                                {if $errors[e] eq 'turing_image'}
                                    <li>Enter the verification code as it is shown in the corresponding box.</li>
                                {/if} 
                                {if $errors[e] eq 'no_upline'}
                                    <li>The system requires an upline to register. {if $settings.get_rand_ref}You have to be agreed to random one or found a referral link in the net.{/if}</li>
                                {/if} 
                                {if $errors[e] eq 'ip_exists_in_database'}
                                    <li>Your IP already exists in our database. Sorry, but registration impossible.</li>
                                {/if}

                                {if $errors[e] eq 'invalid_account_format'}
                                    {foreach from=$account_errors item=err}
                                    <li>{$err}
                                    {/foreach}
                                {/if}

                                <br> 
                            {/section}
                            </ul>
                        {/if}
                                                
                        <div class="screen-reader-response"></div>
                        <form method=post name=regform onsubmit="return checkform()">
                            <input type=hidden name=a value="signup">
                            <input type=hidden name=action value="signup">
                            <p><span class="wpcf7-form-control-wrap fullname">Your Full Name:<input type="text" name="fullname" value="{$frm.fullname|escape:"quotes"}" size="40" autofocus="autofocus" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>                        
                            {if $settings.use_user_location}
                            <p><span class="wpcf7-form-control-wrap address">Your Address:<input type="text" name="address" value="{$frm.address|escape:"quotes"}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>
                            <p><span class="wpcf7-form-control-wrap city">Your City:<input type="text" name="city" value="{$frm.city|escape:"quotes"}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>
                            <p><span class="wpcf7-form-control-wrap state">Your State:<input type="text" name="state" value="{$frm.state|escape:"quotes"}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>
                            <p><span class="wpcf7-form-control-wrap zip">Your Zip:<input type="text" name="zip" value="{$frm.zip|escape:"quotes"}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>
                            <p><span class="wpcf7-form-control-wrap password">Your Country:</span></p>
                            <select name='country' class=inpts>
                                <option value=''>--SELECT--</option>
                                {section name=c loop=$countries}
                                    <option {if $countries[c].name eq $frm.country}selected{/if}>{$countries[c].name|escape:"quotes"}</option>
                                {/section}
                            </select>
                            {/if}
                            <p><span class="wpcf7-form-control-wrap username">Your Username:<input type="text" name="username" value="{$frm.username|escape:"quotes"}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>
                            <p><span class="wpcf7-form-control-wrap password">Define Password:<input type="password" name="password" value="{$frm.password|escape:"quotes"}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>
                            <p><span class="wpcf7-form-control-wrap password2">Retype Password:<input type="password" name="password2" value="{$frm.password2|escape:"quotes"}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>
                            {if $settings.use_transaction_code}
                            <p><span class="wpcf7-form-control-wrap transaction_code">Define Transaction Code:<input type="password" name="transaction_code" value="{$frm.transaction_code|escape:"quotes"}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>
                            <p><span class="wpcf7-form-control-wrap transaction_code2">Retype Transaction Code:<input type="password" name="transaction_code2" value="{$frm.transaction_code2|escape:"quotes"}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>
                            {/if}
                            {foreach from=$pay_accounts item=ps}
                            <p><span class="wpcf7-form-control-wrap account">Your {$ps.name} Account:<input type="text" name="pay_account[{$ps.id}]" value="{$ps.account|escape:html}" aria-required="true"  data-validate="{$ps.validate.func}" data-validate-{$ps.validate.func}="{$ps.validate[$ps.validate.func]}" data-validate-notice="{$ps.validate.notification|escape:html}" placeholder="{$ps.validate.placeholder|escape:html}"" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required"></span></p>
                            {/foreach}
                            {foreach item=p from=$mpay_accounts}
                            {foreach item=ps from=$p.accounts}
                            <p><span class="wpcf7-form-control-wrap pay_account">Your {$p.name} {$ps.name}:<input type="text" name="pay_account[{$p.id}][{$ps.name|escape:html}]" value="{$ps.value|escape:html}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>
                            {/foreach}
                            {/foreach}
                            <p><span class="wpcf7-form-control-wrap email">Your E-mail Address:<input type="text" name="email" value="{$frm.email|escape:"quotes"}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p> 
                            <p><span class="wpcf7-form-control-wrap email1">Retype Your E-mail:<input type="text" name="email1" value="{$frm.email1|escape:"quotes"}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>
                            <p><span class="wpcf7-form-control-wrap sq">Secret question:<input type="text" name="sq" value="{$frm.sq|escape:"quotes"}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>
                            <p><span class="wpcf7-form-control-wrap sa">Secret answer:<input type="text" name="sa" value="{$frm.sa|escape:"quotes"}" size="40" class="inpts wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span></p>
                            {if $settings.use_referal_program}
                                {if $referer}
                                <p><span class="wpcf7-form-control-wrap sa">Your Upline:{*<a href="mailto:{$referer.email}">*}{$referer.name}{*</a>*} ({$referer.username})</span></p>
                                {else}
                                    {if $settings.force_upline}
                                        {if $settings.get_rand_ref}
                                        <p>You do not have an upline. Our system requires an upline for each user. You'll have to agree to get a random one or find a referral link on the net.</p>
                                        <input type=checkbox name="rand_ref" value=1>
                                        {else}
                                        <p>You do not have an upline. Our system requires an upline for each user.</p>
                                        {/if}
                                    {/if}
                                {/if}
                            {/if}
                            <p><input type=checkbox name=agree value=1 {if $frm.agree}checked{/if} > I agree with <a href="{"?a=rules"|encurl}">Terms and conditions</a></p>
                            {if $ti.check.signup}
                            <img src="{"?a=show_validation_image&`$ti.session.name`=`$ti.session.id`&rand=`$ti.session.rand`"|encurl}">
                            <input type=text name=validation_number class=inpts size=15>
                            {/if}
                            <input type="submit" value="Register" class="wpcf7-form-control wpcf7-submit">
                        </form>
                    {/if}
                    <div class="vc_empty_space" style="height: 55px"><span class="vc_empty_space_inner"></span></div>
                </div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}