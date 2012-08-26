{extends file="block.prototype.tpl"}

{block name="block_head" append}
	{assign var="sBlockType" value="stream"}
{/block}

{block name="block" prepend}
	{hook run='block_stream_nav_item' assign="sItemsHook"}
{/block}

{block name="block_title"}
	<a href="{router page='comments'}" title="{$aLang.block_stream_comments_all}">{$aLang.block_stream}</a>
{/block}

{block name="block_nav_attrs"}{if $sItemsHook}style="display: none;"{/if}{/block}

{block name="block_nav"}
	<li class="active js-block-stream-item" data-type="comment"><a href="#">{$aLang.block_stream_comments}</a></li>
	<li class="js-block-stream-item" data-type="topic"><a href="#">{$aLang.block_stream_topics}</a></li>
	{$sItemsHook}
{/block}

{block name="block_nav_wrap" append}
	<ul class="nav nav-pills js-block-stream-dropdown" {if !$sItemsHook}style="display: none;"{/if}>
		<li class="dropdown active js-block-stream-dropdown-trigger"><a href="#">{$aLang.block_stream_comments}</a> <i class="icon-synio-arrows"></i>
			<ul class="dropdown-menu js-block-stream-dropdown-items">
				<li class="active js-block-stream-item" data-type="comment"><a href="#">{$aLang.block_stream_comments}</a></li>
				<li class="js-block-stream-item" data-type="topic"><a href="#">{$aLang.block_stream_topics}</a></li>
				{$sItemsHook}
			</ul>
		</li>
	</ul>
{/block}

{block name="block_js_content"}
	{$sStreamComments}
{/block}