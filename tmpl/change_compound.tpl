{include file="header.tpl"}
<div class="mkd-full-width">
    <div class="mkd-full-width-inner">
        <div data-mkd-parallax-speed="1" class="vc_row wpb_row vc_row-fluid mkd-section vc_custom_1447929125508 mkd-content-aligment-center mkd-grid-section" style="">
            <div class="clearfix mkd-section-inner">
                <div class="mkd-section-inner-margin clearfix">
                    <div class="wpb_column vc_column_container vc_col-sm-12">
                        <div class="wpb_wrapper">
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <h1>Change Compounding Percent:</h1>
                                </div>
                            </div>
                            <div class="vc_empty_space" style="height: 20px"><span class="vc_empty_space_inner"></span></div>
                            <div data-mkd-parallax-speed="1" class="vc_row wpb_row vc_inner vc_row-fluid mkd-section mkd-content-aligment-left" style="">
                                <div class="mkd-full-section-inner">
                                    <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-4 vc_col-md-12">
                                        <div class="wpb_wrapper">
                                            {if $fatal}
                                            {if $fatal eq 'deposit_not_found'}<p><span>Wrong deposit ID has been provided</p></span>{/if}
                                            {if $fatal eq 'compound_forbidden'}<p><span>Compounding is not available for your deposit</p></span>{/if}
                                            {else}
                                            <script>
                                            {literal}
                                            function openCalculator(id)
                                            {
                                                w = 225; h = 400;
                                                t = (screen.height-h-30)/2;
                                                l = (screen.width-w-30)/2;
                                                window.open('?a=calendar&type=' + id, 'calculator' + id, "top="+t+",left="+l+",width="+w+",height="+h+",resizable=1,scrollbars=0");
                                            }
                                            {/literal}
                                            </script>
                                            
                                            <script>
                                            {literal}
                                            function openCalculator(id)
                                            {
                                                w = 225; h = 400;
                                                t = (screen.height-h-30)/2;
                                                l = (screen.width-w-30)/2;
                                                window.open('?a=calendar&type=' + id, 'calculator' + id, "top="+t+",left="+l+",width="+w+",height="+h+",resizable=1,scrollbars=0");
                                            }
                                            {/literal}
                                            </script>
                                            {if $frm.complete}
                                            <p><span>Compounding percent has been successfully changed.</p></span>
                                            {/if}
                                            <form method=post name=change_compound>
                                                <input type=hidden name=a value=change_compound>
                                                <input type=hidden name=action value=change>
                                                <input type=hidden name=deposit value={$deposit.id}>
                                                <table cellspacing="1" cellpadding="2" border="0" width="100%" class="line">
                                                    <tbody>
                                                        <tr>
                                                            <td  class="item" colspan=2>
                                                            Change the compounding percent for <b>{$currency_sign}{$deposit.deposit}</b>
                                                            deposit in the <b>{$type.name|escape:html}</b>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="item" nowrap width=1%>Compounding percent: </td>
                                                            <td class="item">
                                                            <select name='percent' class=inpts>
                                                            {foreach from=$compound_percents key=p item=i}
                                                            <option value="{$p}" {if $deposit.compound == $p}selected{/if}>{$p}</option>
                                                            {/foreach}
                                                            </select>
                                                            </td>
                                                        </tr>
                                                        {if $settings.enable_calculator}
                                                        <tr>
                                                            <td class="item" colspan=2><a href="javascript:openCalculator({$type.id})">Calculate your profit &gt;&gt;</a></td>
                                                        </tr>
                                                        {/if}
                                                        <tr>
                                                            <td class="item"><a href="{"?a=deposit_list"|encurl}">Return</a></td>
                                                            <td class="item"><input type=submit value="Change" class=sbmt></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </form>
                                            {/if}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}
