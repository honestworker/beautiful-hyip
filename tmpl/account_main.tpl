{include file="header.tpl"}
{include file="account_menu.tpl"}
<div class="mkd-full-width" style="">
    <div class="mkd-full-width-inner">
        <div data-mkd-parallax-speed="1" class="account-seperator" style="">
        </div>
        {if $userinfo.umessages}
        <div data-mkd-parallax-speed="1" class="vc_row wpb_row vc_row-fluid mkd-section mkd-content-aligment-center mkd-grid-section" style="">
            <div class="clearfix mkd-section-inner">
                <div class="mkd-section-inner-margin clearfix">
                    <div class="wpb_column vc_column_container vc_col-sm-12">
                        <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                        <div class="wpb_wrapper">
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    {foreach from=$userinfo.umessages item=m}
                                    <p>{$m.text|escape:html|nl2br}</p>
                                    {/foreach}
                                </div>
                            </div>
                            <div class="vc_empty_space" style="height: 10px"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {/if}
        <div data-mkd-parallax-speed="1" class="vc_row wpb_row vc_row-fluid mkd-section mkd-content-aligment-center mkd-grid-section" style="">
            <div class="clearfix mkd-section-inner">
                <div class="mkd-section-inner-margin clearfix">
                    <div class="wpb_column vc_column_container vc_col-sm-12">
                        <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                        <div class="wpb_wrapper">
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <h2>Your account:</h2>
                                </div>
                            </div>
                            <div class="vc_empty_space" style="height: 5px"><span class="vc_empty_space_inner"></span></div>
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    {if $settings.use_transaction_code ==1 && $userinfo.transaction_code == ''}
                                    <p><b>Note: currently you have not specified a Transaction code. The Transaction code strengthens your funds security in our system.
                                        The code is required to withdraw funds from your account{if $settings.internal_transfer_enabled} and for internal transfer to another user account{/if}.
                                        Just do not change 'Transaction code' in your account information if you do not want to use this feature.
                                        <a href=?a=edit_account>Click here</a> to specify a new transaction code.</b></p>
                                    {/if}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
        <div data-mkd-parallax-speed="1" class="vc_row wpb_row vc_row-fluid mkd-section mkd-content-aligment-center mkd-grid-section" style="">
            <div class="clearfix mkd-section-inner">
                <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                <div class="mkd-section-inner-margin clearfix">
                    <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-3 vc_col-md-3">
                        <div class="wpb_wrapper">
                            <div class="mkd-team linked more-info-shown">
                                <div class="mkd-team-inner">
                                    <div class="mkd-team-image mkd-account-card">
                                        <div class="mkd-account-card-text">User</div>
                                        <div class="mkd-account-card-data" align="center">{$userinfo.username}</div>
                                    </div>
                                </div>
                            </div>
                            <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                    <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-3 vc_col-md-3">
                        <div class="wpb_wrapper">
                            <div class="mkd-team linked more-info-shown">
                                <div class="mkd-team-inner">
                                    <div class="mkd-team-image mkd-account-card">
                                        <div class="mkd-account-card-text">Registration Date</div>
                                        <div class="mkd-account-card-data" align="center">{$userinfo.create_account_date}</div>
                                    </div>
                                </div>
                            </div>
                            <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                    <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-3 vc_col-md-3">
                        <div class="wpb_wrapper">
                            <div class="mkd-team linked more-info-shown">
                                <div class="mkd-team-inner">
                                    <div class="mkd-team-image mkd-account-card">
                                        <div class="mkd-account-card-text">Last Access</div>
                                        <div class="mkd-account-card-data" align="center">{$last_access|default:"n/a"}</div>
                                    </div>
                                </div>
                            </div>
                            <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                    <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-3 vc_col-md-3">
                        <div class="wpb_wrapper">
                            <div class="mkd-team linked more-info-shown">
                                <div class="mkd-team-inner">
                                    <div class="mkd-team-image mkd-account-card">
                                        <div class="mkd-account-card-text">Email</div>
                                        <div class="mkd-account-card-data" align="center">{$userinfo.email}</div>
                                    </div>
                                </div>
                            </div>
                            <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                    <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-4 vc_col-md-4">
                        <div class="wpb_wrapper">
                            <div class="mkd-team linked more-info-shown">
                                <div class="mkd-team-inner">
                                    <div class="mkd-team-image mkd-account-card-balance">
                                        <div class="mkd-account-card-text1">Account Balance</div>
                                        <div class="mkd-account-card-data1" align="center">{$currency_sign}{$ab_formated.total}</div>
                                    </div>
                                </div>
                            </div>
                            <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                    <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-4 vc_col-md-4">
                        <div class="wpb_wrapper">
                            <div class="mkd-team linked more-info-shown">
                                <div class="mkd-team-inner">
                                    <div class="mkd-team-image mkd-account-card-deposit">
                                        <div class="mkd-account-card-text1">Active Deposit</div>
                                        <div class="mkd-account-card-data1" align="center">{$currency_sign}{$ab_formated.active_deposit}</div>
                                    </div>
                                </div>
                            </div>
                            <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                    <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-4 vc_col-md-4">
                        <div class="wpb_wrapper">
                            <div class="mkd-team linked more-info-shown">
                                <div class="mkd-team-inner">
                                    <div class="mkd-team-image mkd-account-card-total-earned">
                                        <div class="mkd-account-card-text1">Earned Total</div>
                                        <div class="mkd-account-card-data1" align="center">{$currency_sign}{$ab_formated.earning}</div>
                                    </div>
                                </div>
                            </div>
                            <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                    <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-6 vc_col-md-6">
                        <div class="wpb_wrapper">
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <h2>DEPOSITS INFOMATION</h2>
                                </div>
                            </div>
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <table cellspacing="2" cellpadding="2" border="0" width="100%">
                                        <tbody>
                                            <tr>
                                                <td class="dep">Account Balance:</td>
                                                <td class="dep">{$currency_sign}{$ab_formated.total}</td>
                                            </tr>
                                            <tr>
                                                <td class="dep">Active Deposit:</td>
                                                <td class="dep">{$currency_sign}{$ab_formated.active_deposit}</td>
                                            </tr>
                                            <tr>
                                                <td class="dep">Total Deposit:</td>
                                                <td class="dep">{$currency_sign}{$ab_formated.earning}</td>
                                            </tr>
                                            {if $last_deposit}
                                            <tr>
                                                <td class="dep">Last Deposit:</td>
                                                <td class="dep">{$currency_sign}{$last_deposit|default:"n/a"}<small>{$last_deposit_date|default:"n/a"}</small></td>
                                            </tr>
                                            {/if}
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                    <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-6 vc_col-md-6">
                        <div class="wpb_wrapper">
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <h2>WITHDRAWALS INFOMATION</h2>
                                </div>
                            </div>
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <table cellspacing="2" cellpadding="2" border="0" width="100%">
                                        <tbody>
                                            <tr>
                                                <td class="dep">Pending Withdrawal:</td>
                                                <td class="dep">{$currency_sign}{$ab_formated.withdraw_pending}</td>
                                            </tr>
                                            {if $last_withdrawal}
                                            <tr>
                                                <td class="dep">Last Withdrawal:</td>
                                                <td class="dep">{$currency_sign}{$last_withdrawal|default:"n/a"}{$last_withdrawal_date|default:"n/a"}</td>
                                            </tr>
                                            {/if}
                                            <tr>
                                                <td class="dep">Withdrew Total:</td>
                                                <td class="dep">{$currency_sign}{$ab_formated.withdrawal}<small></small></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}