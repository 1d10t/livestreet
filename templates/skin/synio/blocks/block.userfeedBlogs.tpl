{extends file="block.prototype.tpl"}

{block name="block_wrap"}
	{assign var="sBlockType" value="activity"}
	{if $oUserCurrent}
		{$smarty.block.parent}
	{/if}
{/block}

{block name="block_header_class"}block-header{/block}

{block name="block_title"}
	{$aLang.userfeed_block_blogs_title}
{/block}

{block name="block_js_update"}{/block}
{block name="block_nav_wrap"}{/block}

{block name="block_content"}
	<small class="note">{$aLang.userfeed_settings_note_follow_blogs}</small>

	{if count($aUserfeedBlogs)}
		<ul class="stream-settings-blogs">
			{foreach from=$aUserfeedBlogs item=oBlog}
				{assign var=iBlogId value=$oBlog->getId()}
				<li><input class="userfeedBlogCheckbox input-checkbox"
							type="checkbox"
							{if isset($aUserfeedSubscribedBlogs.$iBlogId)} checked="checked"{/if}
							onClick="if (jQuery(this).prop('checked')) { ls.userfeed.subscribe('blogs',{$iBlogId}) } else { ls.userfeed.unsubscribe('blogs',{$iBlogId}) } " />
					<a href="{$oBlog->getUrlFull()}">{$oBlog->getTitle()|escape:'html'}</a>
				</li>
			{/foreach}
		</ul>
	{else}
		<small class="notice-empty">{$aLang.userfeed_no_blogs}</small>
	{/if}
{/block}