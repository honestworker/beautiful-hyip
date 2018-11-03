<div class="career-small-table">
    <div class="career-small-table-row career-table-header">
        <div class="career-small-table-col-9 career-small-table-col"><h2>Stats</h2></div>
    </div>
    {if $settings.show_members_stats == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-9 career-small-table-col"><a href="{"?a=members_stats"|encurl}" class=menutxt>Investors Stats</a></div>
    </div>
    {/if}
    {if $settings.show_paidout_stats == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-9 career-small-table-col"><a href="{"?a=paidout"|encurl}" class=menutxt>Paid Out</a></div>
    </div>
    {/if}
    {if $settings.show_top10_stats == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-9 career-small-table-col"><a href="{"?a=top10"|encurl}" class=menutxt>Investors Top 10</a></div>
    </div>
    {/if}
    {if $settings.show_last10_stats == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-9 career-small-table-col"><a href="{"?a=last10"|encurl}" class=menutxt>Investors Last 10</a></div>
    </div>
    {/if}
    {if $settings.show_refs10_stats == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-9 career-small-table-col"><a href="{"?a=refs10"|encurl}" class=menutxt>Referrers Top 20</a></div>
    </div>
    {/if}
    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
</div>