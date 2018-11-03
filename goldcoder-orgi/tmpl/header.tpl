{include file="logo.tpl"}

{if $settings.reverse_columns}
  <tr> 
    <td valign="top">
	 <table cellspacing=0 cellpadding=1 border=0 width=100% height=100%  class=line>
	   <tr>
	     <td>
           <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
             <tr class=bgcolorleft valign="top"> 
{if $settings.show_news_box}
              <td width=300 align=center class=bgcolorright><img src="images/q.gif" width=180 height=1>
{if $settings.show_news_box}
{include file="news_box.tpl"}
{/if}
              </td>
              <td class=line valign="top" width=1><img src=images/q.gif width=1 height=1></td>
{/if}

              <td class=bgcolormain valign="top" width=99%>
            <!-- Main: Start -->
            <table width="100%" height="100%" border="0" cellpadding="10" cellspacing="0" class="forTexts">
              <tr>
                <td width=100% height=100% valign=top>
<div class=framebody>

{else}

  <tr> 
    <td valign="top">
	 <table cellspacing=0 cellpadding=1 border=0 width=100% height=100%  class=line>
	   <tr>
	     <td>
           <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
             <tr class=bgcolorleft valign="top"> 
              <td width=300 align=center><img src="images/q.gif" width=180 height=1>
{include file="left.tpl"}
              </td>
              <td class=line valign="top" width=1><img src=images/q.gif width=1 height=1></td>          
              <td class=bgcolormain valign="top" width=99%>
            <!-- Main: Start -->
            <table width="100%" height="100%" border="0" cellpadding="10" cellspacing="0" class="forTexts">
              <tr>
                <td width=100% height=100% valign=top>
<div class=framebody>
{/if}