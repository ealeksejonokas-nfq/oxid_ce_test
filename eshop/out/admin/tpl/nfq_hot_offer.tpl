[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign}]
<form name="transfer" id="transfer" action="[{ $oViewConf->getSelfLink() }]" method="post">
    [{ $oViewConf->getHiddenSid() }]
    <input type="hidden" name="oxid" value="[{ $oxid }]">
    <input type="hidden" name="oxidCopy" value="[{ $oxid }]">
    <input type="hidden" name="cl" value="[{$oViewConf->getActiveClassName()}]">
    <input type="hidden" name="language" value="[{ $actlang }]">
    <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
</form>
<form name="myedit" id="myedit" action="[{ $oViewConf->getSelfLink() }]" method="post">
    [{ $oViewConf->getHiddenSid() }]
    <input type="hidden" name="cl" value="[{$oViewConf->getActiveClassName()}]">
    <input type="hidden" name="fnc" value="">
    <input type="hidden" name="oxid" value="[{ $oxid }]">
    <input type="hidden" name="language" value="[{ $actlang }]">
    <table border="0" width="98%">
        [{*block name="admin_object_seo_form"*}]
        [{* oxinputhelp ident="HELP_GENERAL_SEO_FIXED" *}]
        <tr>
            <td class="edittext" width="20">
                Is product an hot offer
            </td>
            <td class="edittext">
                <input class="edittext" type="checkbox" name="iHotOffer" value='0' [{if $oView->isEntryChecked()}]checked="checked"[{/if}] [{ $readonly }] />
            </td>
        </tr>
        <tr>
            <td class="edittext"></td>
            <td class="edittext">
                <input type="submit" class="edittext" onclick="document.getElementById('myedit').fnc.value='save';" name="saveArticle" value="[{ oxmultilang ident="GENERAL_SAVE" }]" [{ $readonly }]>
            </td>
        </tr>
    </table>
</form>
[{include file="bottomnaviitem.tpl"}]
[{include file="bottomitem.tpl"}]