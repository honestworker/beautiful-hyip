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
                    {if $fatal}
                    <div class="wpb_column vc_column_container vc_col-sm-12">
                        <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>
                        {if $fatal == 'one_per_month'}
                        <div class="wpb_wrapper">
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <h2>You can deposit once a month only.</h2>
                                </div>
                            </div>
                        </div>
                        {/if}
                    </div>
                    {else}
                    {literal}
                    <script language="javascript"><!--
                    function openCalculator(id)
                    {
                        w = 225; h = 400;
                        t = (screen.height-h-30)/2;
                        l = (screen.width-w-30)/2;
                        window.open('?a=calendar&type=' + id, 'calculator' + id, "top="+t+",left="+l+",width="+w+",height="+h+",resizable=1,scrollbars=0");
                    {/literal}
                    {if $qplans > 1}
                        {literal}
                        for (i = 0; i < document.spendform.h_id.length; i++)
                        {
                            if (document.spendform.h_id[i].value == id)
                            {
                            document.spendform.h_id[i].checked = true;
                            }
                        }
                        {/literal}
                    {/if}
                    {literal}
                    }
                    function updateCompound() {
                        var id = 0;
                        var tt = document.spendform.h_id.type;
                        if (tt && tt.toLowerCase() == 'hidden') {
                            id = document.spendform.h_id.value;
                        } else {
                            for (i = 0; i < document.spendform.h_id.length; i++) {
                                if (document.spendform.h_id[i].checked) {
                                    id = document.spendform.h_id[i].value;
                                }
                            }
                        }

                        var cpObj = document.getElementById('compound_percents');
                        if (cpObj) {
                            while (cpObj.options.length != 0) {
                                cpObj.options[0] = null;
                            }
                        }

                        if (cps[id] && cps[id].length > 0) {
                            document.getElementById('coumpond_block').style.display = '';
                            for (i in cps[id]) {
                                cpObj.options[cpObj.options.length] = new Option(cps[id][i]);
                            }
                        } else {
                            document.getElementById('coumpond_block').style.display = 'none';
                        }
                    }
                    var cps = {};
                    --></script>
                    {/literal}
                    {if $frm.say eq 'deposit_success'}
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <h2>The deposit has been successfully saved.</h2>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $frm.say eq 'deposit_saved'}
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <h2>The deposit has been saved. It will become active when the administrator checks statistics.</h2>
                            </div>
                        </div>
                    </div>
                    {/if}
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <h2>Make a Deposit:</h2>
                            </div>
                        </div>
                    </div>
                    {if $errors}
                        {if $errors.less_min}
                        <div class="wpb_wrapper">
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <p>Sorry, you can deposit not less than {$currency_sign}{$errors.less_min} with selected processing</p>
                                </div>
                            </div>
                        </div>
                        {/if}
                        {if $errors.greater_max}
                        <div class="wpb_wrapper">
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <p>Sorry, you can deposit not greater than {$currency_sign}{$errors.greater_max} with selected processing</p>
                                </div>
                            </div>
                        </div>
                        {/if}
                        {if $errors.ec_forbidden}
                        <div class="wpb_wrapper">
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <p>Sorry, deposit with selected processing is temproary forbidden.</p>
                                </div>
                            </div>
                        </div>
                        {/if}
                    {/if}
                    <div class="wpb_wrapper">
                        <form method="post" name="spendform">
                            <input type="hidden" name="a" value="deposit">
                            {if $qplans > 1} Select a plan:<br>
                            {/if}
                            <br>
                            {section name=plans loop=$plans}
                            <table cellspacing="1" cellpadding="2" border="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td colspan="3">
                                            {if $qplans > 1}
                                                <input type="radio" name="h_id" value="{$plans[plans].id}" {if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)} checked {/if} onclick="updateCompound()">
                                                <!--<input type="radio" name="h_id" value="{$plans[plans].id}" {if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)} checked {/if} {if $compounding_available > 0}onclick="document.spendform.compound.disabled={if $plans[plans].use_compound == 1}false{else}true{/if};"{/if}> -->
                                            {else}
	                                            <input type="radio" name="h_id" value='{$plans[plans].id}'>
                                            {/if}
                                            <b>{$plans[plans].name}</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="inheader">Plan</td>
                                        <td class="inheader" width="200">Spent Amount ({$currency_sign})</td>
                                        <td class="inheader" width="100" nowrap="">
                                            <nobr>{$plans[plans].period} Profit (%)</nobr>
                                        </td>
                                    </tr>
                                    {section name=options loop=$plans[plans].plans}
                                    <tr>
                                        <td class="item">{$plans[plans].plans[options].name|escape:html}</td>
                                        <td class="item" class="table-text-right">{$plans[plans].plans[options].deposit}</td>
                                        <td class="item" class="table-text-right">{$plans[plans].plans[options].percent}</td>
                                    </tr>
                                    {/section}
                                    {if $settings.enable_calculator}
                                    <tr>
                                        <td colspan="3" class="table-text-right"><a class="table-text-a" href="javascript:openCalculator('{$plans[plans].id}')">Calculate your profit &gt;&gt;</a></td>
                                    </tr>
                                    {/if}
                                </tbody>
                            </table>
                            <script>
                                cps[{$plans[plans].id}] = {$plans[plans].compound_percents_json};
                            </script>
                            {/section}
                            <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-4 vc_col-lg-offset-4 vc_col-md-4 vc_col-md-offset-4">
                                <div class="wpb_wrapper">
                                    <table cellspacing="2" cellpadding="2" border="0">
                                        <tbody>
                                            <tr>
                                                <td class="table-text-left">Your account balance ({$currency_sign}):</td>
                                                <td class="table-text-right">{$currency_sign}{$ab_formated.total}</td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td class="table-text-right">
                                                    <small>
                                                        {section name=p loop=$ps}
                                                            {if $ps[p].balance > 0}{$currency_sign}{$ps[p].balance} of {$ps[p].name}{if $hold[p].amount > 0} / {$currency_sign}{$hold[p].amount} on hold{/if}<br>{/if}
                                                        {/section}
                                                    </small>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="table-text-left">Amount to Spend ({$currency_sign}):</td>
                                                <td class="table-text-right">
                                                    <input type="text" name="amount" value="{$min_deposit}" class="inpts" size="15" style="text-align:right;">
                                                </td>
                                            </tr>
                                            <tr id="coumpond_block" style="display:none">
                                                <td>Compounding(%):</td>
                                                <td class="table-text-right">
                                                    <select name="compound" class="inpts" id="compound_percents"></select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <table cellspacing="2" cellpadding="2" border="0">
                                                        <tbody>
                                                            {section name=p loop=$ps}
                                                                {if $ps[p].balance > 0 and $ps[p].status == 1}
                                                            <tr>
                                                                <td>
                                                                    <input type="radio" name="type" value="account_{$ps[p].id}" checked="">
                                                                </td>
                                                                <td>Spend funds from the Account Balance {$ps[p].name}</td>
                                                            </tr>
                                                                {/if}
                                                            {/section}
                                                            {section name=p loop=$ps}
                                                                {if $ps[p].status}
                                                            <tr>
                                                                <td>
                                                                    <input type="radio" name="type" value="process_{$ps[p].id}" {if $smarty.section.p.index == 0}checked {/if}>
                                                                </td>
                                                                <td>Spend funds from {$ps[p].name}</td>
                                                            </tr>
                                                                {/if}
                                                            {/section}
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2"  class="table-text-center">
                                                    <input type="submit" value="Spend" class="sbmt">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            {literal}
                            <script language=javascript>
                                for (i = 0; i<document.spendform.type.length; i++) {
                                if ((document.spendform.type[i].value.match(/^process_/))) {
                                    document.spendform.type[i].checked = true;
                                    break;
                                }
                            }
                            updateCompound();
                            </script>
                            {/literal}
                            {/if}
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}