{include file="header.tpl"}

{literal}
<script language=javascript>
function go(p) {
  document.filters.page.value = p;
  document.filters.submit();
}
</script>
{/literal}
<table cellspacing=2 cellpadding=0 border=0 width=100%>
<tr>
 <td><b>Tickets:</b></td>
 <td align=right>
  <form name=filters method=get>
  <input type=hidden name=a value=tickets>
  <input type=hidden name=p>
  Search: <input type=input name=search value="{$frm.search|escape:html}" class=inpts>
  <select name=status class=inpts onchange="document.filters.submit()">
  <option value=0>Open</option>
  <option value=1 {if $frm.status == 1}selected{/if}>Closed</option>
  <option value=2 {if $frm.status == 2}selected{/if}>All</option>
  </select>
  <input type=submit value="Go" class=sbmt>
 </form>
 </td>
</tr>
</table>
<br><br>

{foreach from=$tickets item=t}
<p>
<h4 style="font-weight:{if $t.status == 1}bold{else}normal{/if}">[ID: {$t.code|escape:html}] {$t.title|escape:html}</h4>
<div class="info">
  <i>{$t.last_date}</i>
  <a href="?a=tickets&action=update&code={$t.code}">[view]</a>
  <a href="?a=tickets&action=update&code={$t.code}">[reply]</a>
</div>
<div class="message">{$t.last_message|substr:0:100|escape:html}...</div>
</p>
<hr>
{foreachelse}
<div style="text-align:center">No tickets found</div>
{/foreach}

<center>
{paginator col=$pages.col cur=$pages.cur url="javascript:go(%s)"}
</center>

<button class=btns onclick="document.location='{'?a=tickets&action=create'|encurl}'">Create a Ticket</button>

{include file="footer.tpl"}