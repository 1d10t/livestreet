{extends file="block.prototype.tpl"}

{block name="block_wrap" prepend}
	{assign var="sBlockType" value="tags"}
{/block}

{block name="block_title"}
	{$aLang.block_tags}
{/block}

{block name="block_js_update"}{/block}

{block name="block_nav"}
	<li class="active js-block-tags-item" data-type="all"><a href="#">{$aLang.topic_favourite_tags_block_all}</a></li>
	{if $oUserCurrent}
		<li class="js-block-tags-item" data-type="user"><a href="#">{$aLang.topic_favourite_tags_block_user}</a></li>
	{/if}

	{hook run='block_tags_nav_item'}
{/block}

{block name="block_content"}
	<form action="" method="GET" class="js-tag-search-form search-form-wrapper">
		<div class="search-input-wrapper">
			<input type="text" name="tag" placeholder="{$aLang.block_tags_search}" value="" class="input-text input-width-full autocomplete-tags js-tag-search" />
			<div class="input-submit" onclick="jQuery('.js-tag-search-form').submit()"></div>
		</div>
	</form>

	<div class="js-block-tags-content" data-type="all">
		{if $aTags}
			<ul class="tag-cloud word-wrap">
				{foreach from=$aTags item=oTag}
					<li><a class="tag-size-{$oTag->getSize()}" href="{router page='tag'}{$oTag->getText()|escape:'url'}/">{$oTag->getText()|escape:'html'}</a></li>
				{/foreach}
			</ul>
		{else}
			<div class="notice-empty">{$aLang.block_tags_empty}</div>
		{/if}
	</div>

	{if $oUserCurrent}
		<div class="js-block-tags-content" data-type="user" style="display: none;">
			{if $aTagsUser}
				<ul class="tag-cloud word-wrap">
					{foreach from=$aTagsUser item=oTag}
						<li><a class="tag-size-{$oTag->getSize()}" href="{router page='tag'}{$oTag->getText()|escape:'url'}/">{$oTag->getText()|escape:'html'}</a></li>
					{/foreach}
				</ul>
				{else}
				<div class="notice-empty">{$aLang.block_tags_empty}</div>
			{/if}
		</div>
	{/if}
{/block}