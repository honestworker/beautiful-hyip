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
                                <h2>Your Referrals:</h2>
                                {if $upline.email != ""}
                                Your upline is <a href=mailto:{$upline.email}>{$upline.name}</a><br><br>
                                {/if}
                            </div>
                        </div>
                    </div>
                    <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>                    
                    <table width=300 cellspacing=1 cellpadding=1>
                        <tr>
                            <td class=item>Referrals:</td>
                            <td class=item>{$total_ref}</td>
                        </tr>
                        <tr>
                            <td class=item>Active referrals:</td>
                            <td class=item>{$active_ref}</td>
                        </tr>
                        <tr>
                            <td class=item>Total referral commission:</td>
                            <td class=item>{$currency_sign}{$commissions}</td>
                        </tr>
                    </table>
                    {if $settings.show_refstat}
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <h2>Referral ins/signups</h2>
                                <form method="post" name="opts">                                
                                    <input type="hidden" name="a" value="referals">
                                    <table cellspacing="1" cellpadding="2" border="0" width="100%">
                                        <tbody>
                                            <td>
                                                <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-3 vc_col-lg-offset-2 vc_col-md-4 vc_col-md-offset-1">
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
                                                </div>
                                                <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-3 vc_col-md-4">
                                                    <span style="width: 50px;">To: &nbsp;&nbsp;&nbsp;</span>
                                                    <select name=month_to class=inpts>
                                                    {section name=month_to loop=$month}
                                                        <option value={$smarty.section.month_to.index+1} {if $smarty.section.month_to.index+1 == $frm.month_to}selected{/if}>{$month[month_to]}
                                                    {/section}
                                                    </select>
                                                    <select name=day_to class=inpts>
                                                    {section name=day_to loop=$day}
                                                        <option value={$smarty.section.day_to.index+1} {if $smarty.section.day_to.index+1 == $frm.day_to}selected{/if}>{$day[day_to]}
                                                    {/section}
                                                    </select>
                                                    <select name=year_to class=inpts>
                                                    {section name=year_to loop=$year}
                                                        <option value={$year[year_to]} {if $year[year_to] == $frm.year_to}selected{/if}>{$year[year_to]}
                                                    {/section}
                                                    </select>
                                                </div>
                                                <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-2 vc_col-md-2"> 
                                                    <input type="submit" value="Go" class="sbmt">
                                                </div>
                                            </td>
                                        </tbody>
                                    </table>
                                </form>                                
                                <table width=300 celspacing=1 cellpadding=1 border=0>
                                    <tr>
                                        <td class=inheader>Date</td>
                                        <td class=inheader>Ins</td>
                                        <td class=inheader>Signups</td>
                                    </tr>
                                    {if $show_refstat}
                                    {section name=s loop=$refstat}
                                    <tr>
                                        <td class=item align=center><b>{$refstat[s].date}</b></td>
                                        <td class=item align=right>{$refstat[s].income}</td>
                                        <td class=item align=right>{$refstat[s].reg}</td>
                                    </tr>
                                    {/section}
                                    {else}
                                    <tr>
                                        <td class=item align=center colspan=3>No statistics found for this period.</td>
                                        </tr>
                                    {/if}
                                </table><br>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $settings.show_referals}
                    {if $show_referals}
                    <div class="wpb_wrapper">
                        <div class="wpb_text_column wpb_content_element">
                            <div class="wpb_wrapper">
                                <h2>Your Referrals:</h2>                                
                                <table cellspacing=1 cellpadding=1 border=0>
                                    <tr>
                                        <td class=inheader>Nickname</td>
                                        <td class=inheader>E-mail</td>
                                        <td class=inheader>Status</td>
                                    </tr>
                                    {section name=s loop=$referals}
                                    <tr>
                                        <td class=item><b>{$referals[s].username}</b></td>
                                        <td class=item><a href=mailto:{$referals[s].email}>{$referals[s].email}</a></td>
                                        <td class=item>{if $referals[s].q_deposits > 0}Deposited{else}No deposit yet{/if}</td>
                                    </tr>
                                    {if $referals[s].ref_stats}
                                    <tr>
                                        <td colspan=3>User referrals:
                                        {section name=l loop=$referals[s].ref_stats}
                                        <nobr>{$referals[s].ref_stats[l].cnt_active} active of {$referals[s].ref_stats[l].cnt} on level {$referals[s].ref_stats[l].level}{if !$smarty.section.l.last};{/if}</nobr>
                                        {/section}</td>
                                    </tr>
                                    {/if}
                                    {if $referals[s].came_from}
                                    <tr>
                                        <td colspan=3><a href="{$referals[s].came_from}" target=_blank>[User came from]</a></td>
                                    </tr>
                                    {/if}
                                    {/section}
                                    <tr>
                                        <td colspan=3>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan=3><b>2-10 level referrals:</b> {$cnt_other}</td>
                                    </tr>
                                    <tr>
                                        <td colspan=3><b>2-10 level active referrals:</b> {$cnt_other_active}</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {/if}
                </div>
                <div class="vc_empty_space" style="height: 30px"><span class="vc_empty_space_inner"></span></div>   
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}