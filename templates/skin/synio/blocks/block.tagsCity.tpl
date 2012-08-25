{extends file="block.prototype.tpl"}

{block name="block_wrap"}
	{if $aCityList && count($aCityList)>0}
		{assign var="sBlockType" value="tags"}
		{$smarty.block.parent}
	{/if}
{/block}

{block name="block_header_class"}block-header{/block}

{block name="block_title"}
	{$aLang.block_city_tags}
{/block}

{block name="block_js_update"}{/block}
{block name="block_nav"}{/block}

{block name="block_content"}
	<ul class="tag-cloud word-wrap">
		{foreach from=$aCityList item=oCity}
			<li><a class="tag-size-{$oCity->getSize()}" href="{router page='people'}city/{$oCity->getId()}/">{$oCity->getName()|escape:'html'}</a></li>
		{/foreach}					
	</ul>
{/block}