---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.exchange_protection_policy import ExchangeProtectionPolicy
from msgraph.generated.models.mailbox_protection_unit import MailboxProtectionUnit
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExchangeProtectionPolicy(
	display_name = "Exchange Protection Policy",
	mailbox_protection_units = [
		MailboxProtectionUnit(
			directory_object_id = "cdd3a849-dcaf-4a85-af82-7e39fc14019a",
		),
		MailboxProtectionUnit(
			directory_object_id = "9bc069da-b746-41a4-89ab-26125c6373c7",
		),
		MailboxProtectionUnit(
			directory_object_id = "b218eb4a-ea72-42bd-8f0b-d0bbf794bec7",
		),
	],
)

result = await graph_client.solutions.backup_restore.exchange_protection_policies.post(request_body)


```