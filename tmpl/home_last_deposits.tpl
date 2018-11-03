{if $last_deposits}
<div class="career-small-table">
    <div class="career-small-table-row career-table-header">
        <div class="career-small-table-col-9 career-small-table-col"><h2>Last Deposits</h2></div>
    </div>
    {foreach from=$last_deposits item=s}
    <div class="career-small-table-row">
        <div class="career-small-table-col-9 career-small-table-col"><img src="images/{$s.ec}.gif"></a></div>
    </div>
    <div class="career-small-table-row">
        <div class="career-small-table-col-9 career-small-table-col">{$currency_sign}{$s.amount}</div>
    </div>
    <div class="career-small-table-row">
        <div class="career-small-table-col-9 career-small-table-col">{$s.date}</div>
    </div>
    <div class="career-small-table-row">
        <div class="career-small-table-col-9 career-small-table-col">{$s.username}</div>
    </div>
    {/foreach}
    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
</div>
{/if}
