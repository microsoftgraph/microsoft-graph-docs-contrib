---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.message_rule import MessageRule
from msgraph_beta.generated.models.message_rule_actions import MessageRuleActions
from msgraph_beta.generated.models.importance import Importance
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MessageRule(
	display_name = "Important from partner",
	actions = MessageRuleActions(
		mark_importance = Importance.High,
	),
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').message_rules.by_message_rule_id('messageRule-id').patch(request_body)


```