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
                    {if $frm.say eq 'deposit_success'}
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <h2>The deposit has been successfully saved.</h2>
                            </div>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 10px"><span class="vc_empty_space_inner"></span></div>
                    {/if}
                    {if $frm.say eq 'deposit_saved'}
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <h2>The deposit has been saved. It will became active when the administrator checks statistics.</h2>
                            </div>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 10px"><span class="vc_empty_space_inner"></span></div>
                    {/if}
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <h2>Deposit to Account:</h2>
                            </div>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
                    <div class="mkd-section-inner-margin clearfix">
                        <div class="wpb_wrapper">                            
                            <form method=post>
                                <input type=hidden name=a value=deposit>
                                <input type=hidden name=h_id value=1>
                                <table cellspacing=0 cellpadding=2 border=0>
                                    <tbody>
                                        <tr>
                                            <td>Your account balance ({$currency_sign}):</td>
                                            <td align=right>{$currency_sign}{$ab_formated.total}</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td align=right>
                                                <small>
                                                    {section name=p loop=$ps}
                                                    {if $ps[p].balance > 0}{$currency_sign}{$ps[p].balance} of {$ps[p].name}<br>{/if}
                                                    {/section}
                                                </small>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Amount to Spend ({$currency_sign}):</td>
                                            <td align=right><input type=text name=amount value='10.00' class=inpts size=15 style="text-align:right;"></td>
                                        </tr>
                                        <tr>
                                            <td colspan=2>
                                                <table cellspacing=0 cellpadding=2 border=0>
                                                    {section name=p loop=$ps}
                                                    {if $ps[p].status}
                                                    <tr>
                                                        <td><input type=radio name=type value="process_{$ps[p].id}" {if $smarty.section.p.index == 0}checked{/if}></td>
                                                        <td>Spend funds from {$ps[p].name}</td>
                                                    </tr>
                                                    {/if}
                                                    {/section}
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan=2><br><input type=submit value="Spend" class=sbmt></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}