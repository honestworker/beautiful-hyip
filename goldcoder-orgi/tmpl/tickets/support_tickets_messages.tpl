{include file="header.tpl"}

<h3>{if $ticket}[ID: {$ticket.code}] {$ticket.title|escape:html}{else}Create a Ticket{/if}</h3>
<br><br>
{if $fatals}

{if $fatals.too_many_open_tickets}Open tickets limit is exeeded. You can't open more then {$fatals.too_many_open_tickets} tickets. Please close some open tickets first.<br>{/if}

{else}

{if $say == 'saved'}
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
{if $errors.invalid_email}Please, enter valid email address<br>{/if}
{if $errors.no_name}Please, enter your name<br>{/if}
{if $errors.no_department}Please, select a department realted to your question<br>{/if}
{if $errors.turing_image}Invalid turing code<br>{/if}
<br><br>
{/if}

{literal}
<script language=javascript>
function checkform() {
{/literal}
{if $ticket.id == 0}
{literal}
  if (document.supportform.name.value == '') {
    alert("Please enter your full name!");
    document.supportform.name.focus();
    return false;
  }
  if (document.supportform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.supportform.email.focus();
    return false;
  }
  if (document.supportform.title.value == '') {
    alert("Please enter your message subject!");
    document.supportform.title.focus();
    return false;
  }
{/literal}
{/if}
{literal}
  if (document.supportform.message.value == '') {
    alert("Please enter your message!");
    document.supportform.message.focus();
    return false;
  }
  return true;
}
</script>
{/literal}


<form method=post name=supportform onsubmit="return checkform()">
<input type=hidden name=a value=support>
<input type=hidden name=code value="{$ticket.code}">
<input type=hidden name=v value="{$ticket.sign}">
<input type=hidden name=action value=update>
<input type=hidden name=add_message value=1>
<input type=hidden name=id value="{$ticket.id|default:0}">
<table cellspacing=0 cellpadding=2 border=0 width=100%>
{if $ticket.id == 0}
<tr>
 <th width=1%>Your Name:</th>
 <td><input type=text name="name" class=inpts style="width:100%" value="{$frm.name|escape:html}"></td>
</tr>
<tr>
 <th width=1%>Your Email:</th>
 <td><input type=text name="email" class=inpts style="width:100%" value="{$frm.email|escape:html}"></td>
</tr>
<tr>
 <th width=1%>Subject:</th>
 <td><input type=text name="title" class=inpts style="width:100%" value="{$frm.title|escape:html}"></td>
</tr>
{/if}
<tr>
 <td colspan=2><textarea name="message" style="height:100px;width:100%" class=inpts>{$frm.message|escape:html}</textarea></td>
</tr>
{if $ti.check.support == 1}
<tr>
 <td><img src="{"?a=show_validation_image&`$userinfo.session_name`=`$userinfo.session_id`&rand=`$userinfo.rand`"|encurl}"></td>
 <td><input type=text name=validation_number class=inpts size=30></td>
</tr>
{/if}
<tr>
{if $ticket.id == 0}
 <th width=1%>Department:</th>
 <td>
  <select class=inpts name=dept>
{foreach from=$depts item=d}
   <option value={$d.id}{if $d.id == $frm.dept} selected{/if}>{$d.name|escape:html}</option>
{/foreach}
  </select>
  <button type=submit name=do value=1 class=sbmt>Send</button>
 </td>
{else}
 <th width=1%>Status:</th>
 <td>
  <select class=inpts name=status>
   <option value=1{if $ticket.status == 1} selected{/if}>Active</option>
   <option value=0{if $ticket.status == 0} selected{/if}>Closed</option>
  </select>
  <button type=submit name=do value=1 class=sbmt>Send</button>
 </td>
{/if}
</tr>
</table>
</form>

{/if}

{include file="footer.tpl"}