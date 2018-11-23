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
                    {if $ok == 1}
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <h2>Deposit Confirmation:</h2>
                            </div>
                        </div>
                        <div class="vc_empty_space" style="height: 5px"><span class="vc_empty_space_inner"></span></div>
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <p><b>Total: {$currency_sign}{$total}</b></p>
                            </div>
                        </div>
                    </div>
                    <div class="wpb_wrapper">
                        <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
                        <table cellspacing="1" cellpadding="2" border="0" width="100%" class="line">
                            <tbody>
                                <tr>
                                    <td class="item">Plan:</td>
                                    <td class="item" class="table-text-right">{$deposit.name|escape:html}</td>
                                </tr>
                                <tr>
                                    <td class="item">Profit:</td>
                                    <td class="item" class="table-text-right">{$deposit.percent}% {if $deposit.period == 'end'}after {$deposit.periods} days{else}{$deposit.period_name} for {$deposit.periods} {$deposit.time_units}{if $deposit.time_units != 1}s{/if} {if $deposit.work_week}(mon-fri){/if}{/if}</td>
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
                                <tr>
                                    <td class="item">Amount:</td>
                                    <td class="item" class="table-text-right">{$currency_sign}{$deposit.amount}</td>
                                </tr>
                            </tbody>
                        </table>
                        <form name=spend method=post>
                            <input type=hidden name=a value=deposit>
                            <input type=hidden name=action value=confirm>
                            <input type=hidden name=type value={$type}>
                            <input type=hidden name=h_id value={$h_id}>
                            <input type=hidden name=amount value="{$famount}">
                            <input type=hidden name=compound value={$compound}>
                            <br><input type=submit value="Process" class=sbmt> &nbsp;
                            <input type=button class=sbmt value="Cancel" onclick="document.location='?a=deposit'">
                        </form>
                    </div>
                    {else}
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                {if $max_deposit_less == 1}
                                <p><span>Sorry, the maximal deposit is {$max_deposit_format}.</span></p>
                                {/if}
                                {if $wrong_plan == 1}
                                <p><span>The Plan does not exist.</span></p>
                                {/if}
                                {if $not_enough_funds == 1}
                                <p><span>You have not enough funds to complete the operation</span></p>
                                {/if}
                                {if $less_than_min == 1}
                                <p><span>The minimal spend amount for '{$plan_name}' is {$currency_sign}{$min_amount}</span></p>
                                {/if}
                                {if $on_hold == 1}
                                <p><span>Sorry, this amount on hold now.</span></p>
                                {/if}
                                <p><span>Click <a href="{"?a=deposit"|encurl}">here</a> and try again.</p>
                            </div>
                        </div>
                    </div>
                    {/if}
                </div>
                <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}