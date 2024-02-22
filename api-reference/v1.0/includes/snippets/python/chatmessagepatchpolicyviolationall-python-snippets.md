---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.chat_message import ChatMessage
from msgraph.generated.models.chat_message_policy_violation import ChatMessagePolicyViolation
from msgraph.generated.models.chat_message_policy_violation_policy_tip import ChatMessagePolicyViolationPolicyTip

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChatMessage(
	policy_violation = ChatMessagePolicyViolation(
		policy_tip = ChatMessagePolicyViolationPolicyTip(
			general_text = "This item has been blocked by the administrator.",
			compliance_url = "https://contoso.com/dlp-policy-page",
			matched_condition_descriptions = [
				"Credit Card Number",
			],
		),
		verdict_details = ChatMessagePolicyViolationVerdictDetailsTypes.AllowOverrideWithoutJustification | ChatMessagePolicyViolationVerdictDetailsTypes.AllowFalsePositiveOverride,
		dlp_action = ChatMessagePolicyViolationDlpActionTypes.BlockAccess,
	),
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.by_chat_message_id('chatMessage-id').patch(request_body)


```