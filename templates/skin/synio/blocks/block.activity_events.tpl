{extends file="block.prototype.tpl"}

{block name="block_head" append}
	{assign var="sBlockType" value="activity"}
{/block}

{block name="block_header_class"}block-header{/block}

{block name="block_title"}
	{$aLang.stream_block_config_title}
{/block}

{block name="block_js_update"}{/block}
{block name="block_nav_wrap"}{/block}

{block name="block_content"}
	<small class="note">{$aLang.stream_settings_note_filter}</small>
	
	<ul class="activity-settings-filter">
		{foreach from=$aStreamEventTypes key=sType item=aEventType}
			{if !($oConfig->get('module.stream.disable_vote_events') && substr($sType, 0, 4) == 'vote')}
				<li>
					<label>
						<input class="streamEventTypeCheckbox input-checkbox"
							type="checkbox"
							id="strn_et_{$sType}"
							{if in_array($sType, $aStreamTypesList)}checked="checked"{/if}
							onClick="ls.stream.switchEventType('{$sType}')" />
						{assign var=langKey value="stream_event_type_`$sType`"}
						{$aLang.$langKey}
					</label>
				</li>
			{/if}
		{/foreach}
	</ul>
{/block}