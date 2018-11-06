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
                                <h2>Your deposits:</h2>
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
                        {foreach from=$plans item=p}
                        <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
                        <table cellspacing="1" cellpadding="2" border="0" width="100%" class="line">
                            <tbody>
                                <tr>
                                    <td class=item>
                                        <table cellspacing=1 cellpadding=2 border=0 width=100%>
                                            <tbody>
                                                <tr>
                                                    <td colspan=3 class="table-text-center"><b>{$p.name}</b></td>
                                                </tr>
                                                <tr>
                                                    <td class="inheader">Plan</td>
                                                    <td class="inheader" width="200">Spent Amount ({$currency_sign})</td>
                                                    <td class="inheader" width="100" nowrap="">
                                                        <nobr>{$plans[plans].period} Profit (%)</nobr>
                                                    </td>
                                                </tr>
                                                {foreach from=$p.plans item=o}
                                                <tr>
                                                    <td class="item">{$o.name}</td>
                                                    <td class="item" class="table-text-right">{$o.deposit}</td>
                                                    <td class="item" class="table-text-right">{$o.percent}</td>
                                                </tr>
                                                {/foreach}
                                            </tbody>
                                        </table>
                                        <table cellspacing=1 cellpadding=2 border=0 width=100%>
                                            <tbody>
                                                {if !$p.deposits}
                                                <tr>
                                                    <td colspan=4><b>No deposits for this plan</b></td>
                                                </tr>
                                                {else}
                                                <tr>
                                                    <td colspan=4 class=inheader style="text-align:left">Your deposits:</td>
                                                </tr>
                                                <tr>
                                                    <td class="inheader">Date</td>
                                                    <td class="inheader" width="200">Amount</td>
                                                    {if $p.use_compound}
                                                    <td class="inheader" width="100" nowrap=""><nobr>Compounding Percent</nobr></td>
                                                    {/if}
                                                    {if $p.withdraw_principal}
                                                    <td class="inheader" width="100" nowrap=""><nobr>Release</nobr></td>
                                                    {/if}
                                                </tr>
                                                {foreach from=$p.deposits item=d}
                                                <tr>
                                                    <td class="item" align="center"><b>{$d.date}</b><br>{if $p.q_days == 0}Working {$d.duration} days{else}Expire in {$d.expire_in} days{/if}</td>
                                                    <td class="item" align="center"><b>{$currency_sign}{$d.deposit} <img src="images/{$d.ec}.gif" align=absmiddle hspace=1 height=17></b></td>
                                                    {if $p.use_compound}
                                                    <td class="item" align="center">{$d.compound}% <a href="{"?a=change_compound&deposit=`$d.id`"|encurl}">[change]</a></td>
                                                    {/if}
                                                    {if $p.withdraw_principal}
                                                    <td class="item" align="center">
                                                        {if $d.can_withdraw}
                                                        <a href="{"?a=withdraw_principal&deposit=`$d.id`"|encurl}">[release]</a>
                                                        {else}
                                                            {if $d.pending_duration > 0}
                                                                {$d.pending_duration} day{if $d.pending_duration > 1}s{/if} left
                                                            {else}
                                                                not available
                                                            {/if}
                                                        {/if}
                                                    </td>
                                                    {/if}
                                                </tr>
                                                {/foreach}
                                                {/if}
                                            </tbody>
                                        </table>
                                        {if $p.total_deposit > 0 || $p.today_profit > 0 || $p.total_profit > 0}
                                        <table cellspacing=1 cellpadding=2 border=0 width=100%>
                                            <tbody>
                                                <tr>
                                                    <td>Deposited Total:</td>
                                                    <td><b>{$currency_sign}{$p.total_deposit}</b></td>
                                                </tr>
                                                <tr>
                                                    <td>Profit Today:</td>
                                                    <td><b>{$currency_sign}{$p.today_profit}</b></td>
                                                </tr>
                                                <tr>
                                                    <td>Total Profit:</td>
                                                    <td><b>{$currency_sign}{$p.total_profit}</b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        {/if}
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        {/foreach}
                    </div>
                </div>
                <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}