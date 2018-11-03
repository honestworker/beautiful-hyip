{include file="header.tpl"}

<h3>{if $ticket}[ID: {$ticket.code}] {$ticket.title|escape:html}{else}Create a Ticket{/if}</h3>
<br>
{if $fatals}

{if $fatals.too_many_open_tickets}Open tickets limit is exeeded. You can't open more then {$fatals.too_many_open_tickets} tickets. Please close some open tickets first.<br>{/if}

{else}

{if $frm.say == 'saved'}
<b style=color:green>Message saved</b>
<br><br>
{/if}

{if $ticket}
{foreach from=$ticket.messages item=m}
 <p>
  <b>{$m.from|escape:html}</b> <i>{$m.date}</i> :<br>
  {$m.message|escape:html|nl2br}
 </p>
{/foreach}
{/if}

{if $errors}
{if $errors.no_message}Please, enter a message<br>{/if}
{if $errors.no_title}Please, enter a subject<br>{/if}
{if $errors.no_department}Please, select a department realted to your question<br>{/if}
<br><br>
{/if}

{literal}
<script language=javascript>
function checkform() {
{/literal}
{if $ticket.id == 0}
{literal}
  if (document.ticketform.title.value == '') {
    alert("Please enter your message subject!");
    document.ticketform.title.focus();
    return false;
  }
{/literal}
{/if}
{literal}
  if (document.ticketform.message.value == '') {
    alert("Please enter your message!");
    document.ticketform.message.focus();
    return false;
  }
  return true;
}
</script>
{/literal}


<form method=post name=ticketform onsubmit="return checkform()">
<input type=hidden name=a value=tickets>
<input type=hidden name=action value=update>
<input type=hidden name=add_message value=1>
<input type=hidden name=id value={$ticket.id|default:0}>
<table cellspacing=0 cellpadding=2 border=0 width=100%>
{if $ticket.id == 0}
<tr>
 <th width=1%>Subject:</th>
 <td><input type=text name="title" class=inpts style="width:100%" value="{$frm.title|escape:html}"></td>
</tr>
{/if}
<tr>
 <td colspan=2><textarea name="message" style="height:100px;width:100%" class=inpts>{$frm.message|escape:html}</textarea></td>
</tr>
<tr>
{if $ticket.id == 0}
 <th width=1%>Department:</th>
 <td>
  <select class=inpts name=dept>
{foreach from=$depts item=d}
   <option value={$d.id}{if $d.id == $frm.dept} selected{/if}>{$d.name|escape:html}</option>
{/foreach}
  </select>
  <button type=submit name=do value=1 class=sbmt>Save</button>
 </td>
{else}
 <th width=1%>Status:</th>
 <td>
  <select class=inpts name=status>
   <option value=1{if $ticket.status == 1} selected{/if}>Active</option>
   <option value=0{if $ticket.status == 0} selected{/if}>Closed</option>
  </select>
  <button type=submit name=do value=1 class=sbmt>Save</button>
 </td>
{/if}
</tr>
</table>
</form>

{/if}

{include file="footer.tpl"}