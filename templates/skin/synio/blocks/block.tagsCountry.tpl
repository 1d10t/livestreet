{extends file="block.prototype.tpl"}

{block name="block_wrap"}
	{if $aCountryList && count($aCountryList)>0}
		{assign var="sBlockType" value="tags"}
		{$smarty.block.parent}
	{/if}
{/block}

{block name="block_header_class"}block-header{/block}

{block name="block_title"}
	{$aLang.block_country_tags}
{/block}

{block name="block_js_update"}{/block}
{block name="block_nav"}{/block}

{block name="block_content"}
	<ul class="tag-cloud word-wrap">
		{foreach from=$aCountryList item=oCountry}
			<li><a class="tag-size-{$oCountry->getSize()}" href="{router page='people'}country/{$oCountry->getId()}/">{$oCountry->getName()|escape:'html'}</a></li>
		{/foreach}					
	</ul>
{/block}