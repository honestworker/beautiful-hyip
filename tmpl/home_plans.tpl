{literal}
<script language="javascript"><!--
function openCalculator(id)
{
    w = 225; h = 400;
    t = (screen.height-h-30)/2;
    l = (screen.width-w-30)/2;
    window.open('?a=calendar&type=' + id, 'calculator' + id, "top="+t+",left="+l+",width="+w+",height="+h+",resizable=1,scrollbars=0");
}
--></script>
{/literal}

{foreach from=$index_plans item=p}
{if !$p.closed}
<div class="career-small-table">
    <div class="career-small-table-row career-table-header">
        <div class="career-small-table-col-9 career-small-table-col">{if $p.dsc != ''}<a href="{"?a=show_package_info&id=`$p.id`"|encurl}">{/if}<b>{$p.name|escape:html}</b></a></div>
    </div>
    {if $p.plans}
    <div class="career-small-table-row career-table-header">
        <div class="career-small-table-col-3 career-small-table-col">Plan</div>
        <div class="career-small-table-col-3 career-small-table-col">Spent Amount ({$currency_sign})</div>
        <div class="career-small-table-col-3 career-small-table-col"><nobr>{$p.period} Profit (%)</nobr></div>
    </div>
    {foreach from=$p.plans item=o}
    <div class="career-small-table-row">
        <div class="career-small-table-col-3 career-small-table-col">{$o.name|escape:html}</div>
        <div class="career-small-table-col-3 career-small-table-col">{$o.deposit}</div>
        <div class="career-small-table-col-3 career-small-table-col">{$o.percent|string_format:"%.2f"}</div>
    </div>
    {/foreach}
    {if $settings.enable_calculator and $p.period != 'Floating'}
    <div class="career-small-table-row">
        <div class="career-small-table-col-9 career-small-table-col"><a href="javascript:openCalculator('{$p.id}')">Calculate your profit &gt;&gt;</a></div>
    </div>
    {/if}
    {/if}
    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
</div>
{/if}
{/foreach}