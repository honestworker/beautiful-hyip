{include file="header.tpl"}


<h3>News</h3><br>

<table cellspacing=1 cellpadding=2 border=0 width=100%>
{foreach from=$news item=n}
<tr>
 <td align=justify><a name="{$n.id}"></a><b>{$n.title}</b><br>
  {$n.full_text}<br>
  <small><i>{$n.d}</i></small>
 </td>
</tr>
{foreachelse}
<tr>
 <td colspan=3 align=center>No news found</td>
</tr>
{/foreach}
</table>

{if $colpages > 1}
<center>
{if $prev_page > 0}
 <a href="{"?a=news&page=`$prev_page`"|encurl}">&lt;&lt;</a>
{/if}
{foreach from=$pages item=p}
{if $p.current == 1}
{$p.page}
{else}
 <a href="{"?a=news&page=`$p.page`"|encurl}">{$p.page}</a>
{/if}
{/foreach}
{if $next_page > 0}
 <a href="{"?a=news&page=`$next_page`"|encurl}">&gt;&gt;</a>
{/if}
</center>
{/if}


{include file="footer.tpl"}