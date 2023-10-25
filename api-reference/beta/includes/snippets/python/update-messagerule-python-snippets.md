---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = MessageRule(
	display_name = "Important from partner",
	actions = MessageRuleActions(
		mark_importance = Importance.High,
	),
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').message_rules.by_message_rule_id('messageRule-id').patch(body = request_body)


```