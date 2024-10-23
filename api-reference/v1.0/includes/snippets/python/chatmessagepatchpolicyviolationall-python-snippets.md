---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.chat_message import ChatMessage
from msgraph.generated.models.chat_message_policy_violation import ChatMessagePolicyViolation
from msgraph.generated.models.chat_message_policy_violation_policy_tip import ChatMessagePolicyViolationPolicyTip
from msgraph.generated.models.chat_message_policy_violation_verdict_details_types import ChatMessagePolicyViolationVerdictDetailsTypes
from msgraph.generated.models.chat_message_policy_violation_dlp_action_types import ChatMessagePolicyViolationDlpActionTypes
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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