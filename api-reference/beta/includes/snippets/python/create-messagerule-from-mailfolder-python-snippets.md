---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.message_rule import MessageRule
from msgraph.generated.models.message_rule_predicates import MessageRulePredicates
from msgraph.generated.models.message_rule_actions import MessageRuleActions
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress

graph_client = GraphServiceClient(credentials, scopes)

request_body = MessageRule(
	display_name = "From partner",
	sequence = 2,
	is_enabled = True,
	conditions = MessageRulePredicates(
		sender_contains = [
			"adele",
		],
	),
	actions = MessageRuleActions(
		forward_to = [
			Recipient(
				email_address = EmailAddress(
					name = "Alex Wilbur",
					address = "AlexW@contoso.com",
				),
			),
		],
		stop_processing_rules = True,
	),
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').message_rules.post(request_body)


```