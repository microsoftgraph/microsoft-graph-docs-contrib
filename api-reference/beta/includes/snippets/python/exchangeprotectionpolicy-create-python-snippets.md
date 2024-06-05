---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.exchange_protection_policy import ExchangeProtectionPolicy
from msgraph_beta.generated.models.mailbox_protection_unit import MailboxProtectionUnit

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExchangeProtectionPolicy(
	display_name = "Exchange Protection Policy",
	mailbox_protection_units = [
		MailboxProtectionUnit(
			additional_data = {
					"user_id" : "cdd3a849-dcaf-4a85-af82-7e39fc14019a",
			}
		),
		MailboxProtectionUnit(
			additional_data = {
					"user_id" : "9bc069da-b746-41a4-89ab-26125c6373c7",
			}
		),
		MailboxProtectionUnit(
			additional_data = {
					"user_id" : "b218eb4a-ea72-42bd-8f0b-d0bbf794bec7",
			}
		),
	],
)

result = await graph_client.solutions.backup_restore.exchange_protection_policies.post(request_body)


```