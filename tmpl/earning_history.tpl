{include file="header.tpl"}
{include file="account_menu.tpl"}
{literal}
<script language=javascript>
    function go(p)
    {
        document.opts.page.value = p;
        document.opts.submit();
    }
</script>
{/literal}
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
                                <h2>History:</h2>
                            </div>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
                    <div class="wpb_wrapper">
                        <form method="post" name="opts">
                            <input type="hidden" name="a" value="earnings">
                            <input type="hidden" name="page" value="{$current_page}">
                            <table cellspacing="1" cellpadding="2" border="0" width="100%">
                                <tbody>
                                    <td>
                                        <select name=type class=inpts onchange="document.opts.submit();">
                                            <option value="">All transactions</option>
                                            {section name=opt loop=$options}
                                                <option value="{$options[opt].type}" {if $options[opt].selected}selected{/if}>{$options[opt].type_name}</option>
                                            {/section}
                                        </select>
                                        {if $ecs}
                                        <br><img src=images/q.gif width=1 height=4><br>
                                        <select name=ec class=inpts>
                                            <option value=-1>All eCurrencies</option>
                                            {section name=ec loop=$ecs}
                                                <option value={$ecs[ec].id} {if $frm.ec eq $ecs[ec].id}selected{/if}>{$ecs[ec].name}</option>
                                            {/section}
                                        </select>
                                        {/if}
                                    </td>
                                    <td class="table-text-right">
                                        <span style="width: 50px;">From: </span>
                                        <select name=month_from class=inpts>
                                        {section name=month_from loop=$month}
                                            <option value={$smarty.section.month_from.index+1} {if $smarty.section.month_from.index+1 == $frm.month_from}selected{/if}>{$month[month_from]}
                                        {/section}
                                        </select>
                                        <select name=day_from class=inpts>
                                        {section name=day_from loop=$day}
                                            <option value={$smarty.section.day_from.index+1} {if $smarty.section.day_from.index+1 == $frm.day_from}selected{/if}>{$day[day_from]}
                                        {/section}
                                        </select>
                                        <select name=year_from class=inpts>
                                        {section name=year_from loop=$year}
                                            <option value={$year[year_from]} {if $year[year_from] == $frm.year_from}selected{/if}>{$year[year_from]}
                                        {/section}
                                        </select>
                                        <br><img src=images/q.gif width=1 height=4><br>
                                        <span style="width: 50px;">To: </span>
                                        <select name=month_to class=inpts>
                                        {section name=month_to loop=$month}
                                            <option value={$smarty.section.month_to.index+1} {if $smarty.section.month_to.index+1 == $frm.month_to}selected{/if}>{$month[month_to]}
                                        {/section}
                                        </select> &nbsp;
                                        <select name=day_to class=inpts>
                                        {section name=day_to loop=$day}
                                            <option value={$smarty.section.day_to.index+1} {if $smarty.section.day_to.index+1 == $frm.day_to}selected{/if}>{$day[day_to]}
                                        {/section}
                                        </select> &nbsp;
                                        <select name=year_to class=inpts>
                                        {section name=year_to loop=$year}
                                        <option value={$year[year_to]} {if $year[year_to] == $frm.year_to}selected{/if}>{$year[year_to]}
                                        {/section}
                                        </select>
                                    </td>
                                    <td>
                                        &nbsp; <input type=submit value="Go" class=sbmt>
                                    </td>
                                </tbody>
                            </table>
                        </form>
                    </div>
                    <div class="wpb_wrapper">
                        {if $settings.use_history_balance_mode}
                        <table cellspacing="1" cellpadding="2" border="0" width="100%">
                            <tbody>
                                <tr>
                                    <td class=inheader>Date</td>
                                    <td class=inheader>Type</td>
                                    <td class=inheader>Credit</td>
                                    <td class=inheader>Debit</td>
                                    <td class=inheader>Balance</td>
                                    <td class=inheader>P.S.</td>
                                </tr>
                                {if $qtrans > 0}
                                    {section name=trans loop=$trans}
                                <tr>
                                    <td class="table-text-center" nowrap="">{$trans[trans].d}</td>
                                    <td><b>{$trans[trans].transtype}</b><br><small class=gray>{$trans[trans].description}</small></td>
                                    <td class="table-text-right"><b>
                                        {if $trans[trans].debitcredit == 0}
                                        {$currency_sign}{$trans[trans].actual_amount}
                                        </b>
                                        {else}
                                        &nbsp;
                                        {/if}
                                    </td>
                                    <td class="table-text-right"><b>
                                        {if $trans[trans].debitcredit == 1}
                                        {$currency_sign}{$trans[trans].actual_amount}
                                        </b>
                                        {else}
                                        &nbsp;
                                        {/if}
                                    </td>
                                    <td class="table-text-right"><b>{$currency_sign}{$trans[trans].balance}</b></td>
                                    <td><img src="images/{$trans[trans].ec}.gif" align=absmiddle hspace=1 height=17></td>
                                </tr>
                                    {/section}
                                {else}
                                <tr>
                                    <td colspan=6 class="table-text-center">No transactions found</td>
                                </tr>
                                {/if}
                                <tr>
                                    <td colspan=3>&nbsp;</td>
                                </tr>
                                {if $qtrans > 0}
                                <tr>
                                    <td colspan=2>Total for this period:</td>
                                    <td class="table-text-right" nowrap=""><b>{$currency_sign}{$periodcredit}</b></td>
                                    <td class="table-text-right" nowrap=""><b>{$currency_sign}{$perioddebit}</b></td>
                                    <td class="table-text-right" nowrap=""><b>{$currency_sign}{$periodbalance}</b></td>
                                </tr>
                                {/if}
                                <tr>
                                    <td colspan=2>Total:</td>
                                    <td class="table-text-right" nowrap=""><b>{$currency_sign}{$allcredit}</b></td>
                                    <td class="table-text-right" nowrap=""><b>{$currency_sign}{$alldebit}</b></td>
                                    <td class="table-text-right" nowrap=""><b>{$currency_sign}{$allbalance}</b></td>
                                </tr>
                            </tbody>
                        </table>
                        {else}                        
                        <table cellspacing="1" cellpadding="2" border="0" width="100%">
                            <tbody>
                                <tr>
                                    <td class=inheader>Type</td>
                                    <td class=inheader width="200">Amount</td>
                                    <td class=inheader width="170">Date</td>
                                </tr>
                                {if $qtrans > 0}
                                    {section name=trans loop=$trans}
                                <tr>
                                    <td><b>{$trans[trans].transtype}</b></td>
                                    <td class="table-text-right" width="200"><b>{$currency_sign} {$trans[trans].actual_amount}</b> <img src="images/{$trans[trans].ec}.gif" align=absmiddle hspace=1 height=17></td>
                                    <td class="table-text-center" width="170" valign=bottom><b><small>{$trans[trans].d}</small></b></td>
                                </tr>
                                <tr>
                                    <td colspan=3 class=gray><small>{$trans[trans].description}</small></td>
                                </tr>
                                    {/section}
                                {else}
                                <tr>
                                    <td colspan=3 class="table-text-center">No transactions found</td>
                                </tr>
                                {/if}
                                <tr>
                                    <td colspan=3>&nbsp;</td>
                                </tr>
                                {if $qtrans > 0}
                                <tr>
                                    <td colspan=2 class="table-text-left">For this period:</td>
                                    <td class="table-text-right"><b>{$currency_sign} {$periodsum}</b></td>
                                </tr>
                                {/if}
                                <tr>
                                    <td colspan=2 class="table-text-left">Total:</td>
                                    <td class="table-text-right"><b>{$currency_sign} {$allsum}</b></td>
                                </tr>
                            </tbody>
                        </table>
                        {/if}
                    </div>
                    {if $colpages > 1}
                    <center>
                        {if $prev_page > 0}
                            <a href="javascript:go('{$prev_page}')">&lt;&lt;</a>
                        {/if}
                        {section name=p loop=$pages}
                            {if $pages[p].current == 1}
                                {$pages[p].page}
                            {else}
                                <a href="javascript:go('{$pages[p].page}')">{$pages[p].page}</a>
                            {/if}
                            {/section}
                        {if $next_page > 0}
                            <a href="javascript:go('{$next_page}')">&gt;&gt;</a>
                        {/if}
                    </center>
                    {/if}
                </div>
                <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}