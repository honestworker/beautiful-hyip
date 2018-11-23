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
                    {if $false_data != 1}
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <h2>Deposit Confirmation:</h2>
                            </div>
                        </div>
                        <div class="vc_empty_space" style="height: 5px"><span class="vc_empty_space_inner"></span></div>
                    </div>
                    <div class="wpb_wrapper">
                        <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
                        <table cellspacing="1" cellpadding="2" border="0" width="100%" class="form deposit_confirm">
                            <tbody>
                                {if $deposit.id > 0}
                                <tr>
                                    <td class="item">Plan:</td>
                                    <td class="item" class="table-text-right">{$deposit.name|escape:html}{$coin_payment_image}</td>
                                </tr>
                                <tr>
                                    <td class="item">Profit:</td>
                                    <td class="item" class="table-text-right">{$deposit.percent}% {if $deposit.period == 'end'}after {$deposit.periods} days{else}{$deposit.period_name} for {if $deposit.periods == 0}lifelong{else}{$deposit.periods} {$deposit.time_units}{if $deposit.time_units != 1}s{/if} {if $deposit.work_week}(mon-fri){/if}{/if}{/if}</td>
                                </tr>
                                <tr>
                                    <td class="item">Principal Return:</td>
                                    <td class="item" class="table-text-right">{if $deposit.principal_return}Yes{if $deposit.principal_return_hold_percent > 0}, with {$deposit.principal_return_hold_percent|number_format:2}% fee{/if}{else}No (included in profit){/if}</td>
                                </tr>
                                <tr>
                                    <td class="item">Principal Withdraw:</td>
                                    <td class="item" class="table-text-right">
                                    {if $deposit.principal_withdraw}
                                    Available with
                                        {foreach from=$deposit.principal_withdraw_terms item=t name=wpt}
                                            {$t.percent}% fee {if $t.duration > 0}after {$t.duration} days{/if}{if !$smarty.foreach.wpt.last} or {/if}
                                        {/foreach}
                                        {if $deposit.principal_withdraw_duration_max} but before {$deposit.principal_withdraw_duration_max|number_format} days{/if}
                                    {else}Not available{/if}
                                    </td>
                                </tr>
                                {if $deposit.compound != -1}
                                <tr>
                                    <td class="item">Compound:</td>
                                    <td class="item" class="table-text-right">{$deposit.compound|number_format}%</td>
                                </tr>
                                {/if}
                                {/if}
                                {if $deposit.ec_fees.fee}
                                <tr>
                                    <td class="item">Credit Amount:</td>
                                    <td class="item" class="table-text-right">{$currency_sign}{$deposit.user_amount}</td>
                                </tr>
                                <tr>
                                    <td class="item">Deposit Fee:</td>
                                    <td class="item" class="table-text-right">{$deposit.ec_fees.percent}% + {$currency_sign}{$deposit.ec_fees.add_amount} (min. {$currency_sign}{$deposit.ec_fees.fee_min} max. {$currency_sign}{$deposit.ec_fees.fee_max})</td>
                                </tr>
                                {/if}
                                {if $deposit.converted_amount}
                                <tr>
                                    <td class="item">Debit Amount:</td>
                                    <td class="item" class="table-text-right">{$currency_sign}{$deposit.converted_amount}</td>
                                </tr>
                                <tr>
                                    <td class="item">{$deposit.converted_fiat} Debit Amount:</td>
                                    <td class="item" class="table-text-right">{$deposit.amount}</td>
                                </tr>
                                {else}
                                <tr>
                                    <td class="item">Debit Amount:</td>
                                    <td class="item" class="table-text-right">{$currency_sign}{$deposit.amount}</td>
                                </tr>
                                {/if}
                            </tbody>
                        </table>
                    </div>
                    <div class="vc_empty_space" style="height: 10px"><span class="vc_empty_space_inner"></span></div>
                    {$payment_form}
                    {/if}
                </div>
                <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}
