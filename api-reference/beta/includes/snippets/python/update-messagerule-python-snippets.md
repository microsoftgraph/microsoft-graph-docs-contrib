---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.message_rule import MessageRule
from msgraph.generated.models.message_rule_actions import MessageRuleActions

graph_client = GraphServiceClient(credentials, scopes)

request_body = MessageRule(
	display_name = "Important from partner",
	actions = MessageRuleActions(
		mark_importance = Importance.High,
	),
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').message_rules.by_message_rule_id('messageRule-id').patch(request_body)


```