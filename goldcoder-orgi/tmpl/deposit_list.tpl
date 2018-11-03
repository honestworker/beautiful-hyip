{include file="header.tpl"}

<h3>Your deposits:</h3><br>

<b>Total: {$currency_sign}{$total}</b><br><br>

{foreach from=$plans item=p}
<table cellspacing=1 cellpadding=2 border=0 width=100% class=line><tr><td class=item>
<table cellspacing=1 cellpadding=2 border=0 width=100%>
<tr>
 <td colspan=3 align=center><b>{$p.name}</b></td>
</tr><tr>
 <td class=inheader>Plan</td>
 <td class=inheader width=200>Amount Spent ({$currency_sign})</td>
 <td class=inheader width=100 nowrap><nobr>{$p.period} Profit (%)</nobr></td>
</tr>
{foreach from=$p.plans item=o}
<tr>
 <td class=item>{$o.name}</td>
 <td class=item align=right>{$o.deposit}</td>
 <td class=item align=right>{$o.percent}</td>
</tr>
{/foreach}
</table>
<br>
<table cellspacing=1 cellpadding=2 border=0 width=100%>
{if !$p.deposits}
<tr>
 <td colspan=4><b>No deposits for this plan</b></td>
</tr>           
{else}
<tr>
 <td colspan=4 class=inheader style="text-align:left">Your deposits:</td>
</tr>
<tr>
 <td class=inheader>Date</td>
 <td class=inheader>Amount</td>
{if $p.use_compound}
 <td class=inheader>Compounding Percent</td>
{/if}
{if $p.withdraw_principal}
 <td class=inheader>Release</td>
{/if}
</tr>           
{foreach from=$p.deposits item=d}
<tr>
 <td align=center class=item><b>{$d.date}</b><br>{if $p.q_days == 0}Working {$d.duration} days{else}Expire in {$d.expire_in} days{/if}</td>
 <td align=center class=item><b>{$currency_sign}{$d.deposit} <img src="images/{$d.ec}.gif" align=absmiddle hspace=1 height=17></b></td>
{if $p.use_compound}
 <td align=center class=item align=center>{$d.compound}% <a href="{"?a=change_compound&deposit=`$d.id`"|encurl}">[change]</a></td>
{/if}
{if $p.withdraw_principal}
 <td align=center class=item>
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
</table>
{if $p.total_deposit > 0 || $p.today_profit > 0 || $p.total_profit > 0}
<table cellspacing=0 cellpadding=1 border=0>
<tr><td>Deposited Total:</td><td><b>{$currency_sign}{$p.total_deposit}</b></td></tr>
<tr><td>Profit Today:</td><td><b>{$currency_sign}{$p.today_profit}</b></td></tr>
<tr><td>Total Profit:</td><td><b>{$currency_sign}{$p.total_profit}</b></td></tr>
</table>
{/if}
<br>
</td></tr></table>
<br>
{/foreach}

{include file="footer.tpl"}
