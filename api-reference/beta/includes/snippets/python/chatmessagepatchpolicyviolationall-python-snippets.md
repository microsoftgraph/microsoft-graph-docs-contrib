---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChatMessage()
policy_violation = ChatMessagePolicyViolation()
policy_violationpolicy_tip = ChatMessagePolicyViolationPolicyTip()
policy_violationpolicy_tip.general_text = 'This item has been blocked by the administrator.'

policy_violationpolicy_tip.compliance_url = 'https://contoso.com/dlp-policy-page'

policy_violationpolicy_tip.MatchedConditionDescriptions(['Credit Card Number', ])


policy_violation.policy_tip = policy_violationpolicy_tip
policy_violation.verdictdetails(ChatMessagePolicyViolationVerdictDetailsTypes.AllowOverrideWithoutJustification,AllowFalsePositiveOverride('chatmessagepolicyviolationverdictdetailstypes.allowoverridewithoutjustification,allowfalsepositiveoverride'))

policy_violation.dlpaction(ChatMessagePolicyViolationDlpActionTypes.BlockAccess('chatmessagepolicyviolationdlpactiontypes.blockaccess'))


request_body.policy_violation = policy_violation



result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.by_message_id('chatMessage-id').patch(request_body = request_body)


```