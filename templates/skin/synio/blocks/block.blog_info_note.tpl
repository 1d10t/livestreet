{extends file="block.prototype.tpl"}

{block name="block_head" append}
	{assign var="sBlockType" value="blog"}
{/block}

{block name="block_header_class"}block-header{/block}

{block name="block_title"}
	{$aLang.block_blog_info_note}
{/block}

{block name="block_js_update"}{/block}
{block name="block_nav_wrap"}{/block}

{block name="block_content"}
	{$aLang.block_blog_info_note_text}
{/block}