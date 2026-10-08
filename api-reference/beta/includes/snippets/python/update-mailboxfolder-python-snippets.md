---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.mailbox_folder import MailboxFolder
from msgraph_beta.generated.models.single_value_legacy_extended_property import SingleValueLegacyExtendedProperty
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MailboxFolder(
	display_name = "Announcements",
	single_value_extended_properties = [
		SingleValueLegacyExtendedProperty(
			id = "String 0x3001",
			value = "Announcements",
		),
	],
)

result = await graph_client.admin.exchange.mailboxes.by_mailbox_id('mailbox-id').folders.by_mailbox_folder_id('mailboxFolder-id').patch(request_body)


```