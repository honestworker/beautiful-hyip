<div class="career-small-table">
    <div class="career-small-table-row career-table-header">
        <div class="career-small-table-col-9 career-small-table-col"><h2>Info</h2></div>
    </div>
    {if $settings.show_info_box_started == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-4 career-small-table-col"><b>Started</b></div>
        <div class="career-small-table-col-5 career-small-table-col">{$settings.site_start_month_str_generated} {$settings.site_start_day}, {$settings.site_start_year}</div>
    </div>
    {/if}
    {if $settings.show_info_box_running_days == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-4 career-small-table-col"><b>Running days</b></div>
        <div class="career-small-table-col-5 career-small-table-col">{$settings.site_days_online_generated}</div>
    </div>
    {/if}
    {if $settings.show_info_box_total_accounts}
    <div class="career-small-table-row">
        <div class="career-small-table-col-4 career-small-table-col"><b>Total accounts</b></div>
        <div class="career-small-table-col-5 career-small-table-col">{$settings.info_box_total_accounts_generated}</div>
    </div>
    {/if}
    {if $settings.show_info_box_vip_accounts}
    <div class="career-small-table-row">
        <div class="career-small-table-col-4 career-small-table-col"><b>Active accounts</b></div>
        <div class="career-small-table-col-5 career-small-table-col">{$settings.info_box_total_active_accounts_generated}</div>
    </div>
    {/if}
    {if $settings.show_info_box_deposit_funds == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-4 career-small-table-col"><b>Total deposited</b></div>
        <div class="career-small-table-col-5 career-small-table-col">{$settings.info_box_deposit_funds_generated}</div>
    </div>
    {/if}
    {if $settings.show_info_box_today_deposit_funds == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-4 career-small-table-col"><b>Today deposited</b></div>
        <div class="career-small-table-col-5 career-small-table-col">{$settings.info_box_today_deposit_funds_generated}</div>
    </div>
    {/if}
    {if $settings.show_info_box_total_withdraw == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-4 career-small-table-col"><b>Total withdraw</b></div>
        <div class="career-small-table-col-5 career-small-table-col">{$settings.info_box_withdraw_funds_generated}</div>
    </div>
    {/if}
    {if $settings.show_info_box_today_withdraw_funds == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-4 career-small-table-col"><b>Today withdraw</b></div>
        <div class="career-small-table-col-5 career-small-table-col">{$settings.info_box_today_withdraw_funds_generated}</div>
    </div>
    {/if}
    {if $settings.show_info_box_visitor_online == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-4 career-small-table-col"><b>Visitors online</b></div>
        <div class="career-small-table-col-5 career-small-table-col">{$settings.info_box_visitor_online_generated}</div>
    </div>
    {/if}
    {if $settings.show_info_box_members_online == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-4 career-small-table-col"><b>Members online</b></div>
        <div class="career-small-table-col-5 career-small-table-col">{$settings.show_info_box_members_online_generated}</div>
    </div>
    {/if}
    {if $settings.show_info_box_newest_member == 1}
    <div class="career-small-table-row">
        <div class="career-small-table-col-4 career-small-table-col"><b>Newest Member</b></div>
        <div class="career-small-table-col-5 career-small-table-col">{if $settings.show_info_box_newest_member_generated}{$settings.show_info_box_newest_member_generated}{else}N/A{/if}</div>
    </div>
    {/if}
    {if $settings.show_info_box_lastaddfunds}
        {if $stat_last_adfunds}
        <div class="career-small-table-row">
            <div class="career-small-table-col-4 career-small-table-col"><b>Last topup:</b></div>
            <div class="career-small-table-col-5 career-small-table-col">{$currency_sign} {$stat_last_addfunds.amount|number_format:2} ({$stat_last_adfunds.username})</div>
        </div>
        {/if}
    {/if}
    {if $settings.show_info_box_lastdeposit}
        {if $stat_last_deposit}
        <div class="career-small-table-row">
            <div class="career-small-table-col-4 career-small-table-col"><b>Last deposit:</b></div>
            <div class="career-small-table-col-5 career-small-table-col">{$currency_sign} {$stat_last_deposit.amount|number_format:2} ({$stat_last_deposit.username})</div>
        </div>
        {/if}
    {/if}
    {if $settings.show_info_box_lastwithdrawal}
        {if $stat_last_withdrawal}
        <div class="career-small-table-row">
            <div class="career-small-table-col-4 career-small-table-col"><b>Last withdraw:</b></div>
            <div class="career-small-table-col-5 career-small-table-col">{$currency_sign} {$stat_last_withdrawal.amount|number_format:2} ({$stat_last_withdrawal.username})</div>
        </div>
        {/if}
    {/if}
    {if $settings.show_info_box_last_update == 1}
        <div class="career-small-table-row">
            <div class="career-small-table-col-4 career-small-table-col"><b>Last update</b></div>
            <div class="career-small-table-col-5 career-small-table-col">{$settings.show_info_box_last_update_generated}</div>
        </div>
    {/if}
    <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
</div>