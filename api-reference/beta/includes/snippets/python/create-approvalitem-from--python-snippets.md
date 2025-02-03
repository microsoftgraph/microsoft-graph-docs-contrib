---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.approval_item import ApprovalItem
from msgraph_beta.generated.models.approval_identity_set import ApprovalIdentitySet
from msgraph_beta.generated.models.identity import Identity
from msgraph_beta.generated.models.approval_item_type import ApprovalItemType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ApprovalItem(
	approvers = [
		ApprovalIdentitySet(
			user = Identity(
				id = "39d1a7fb-5f54-4c89-b513-241683718c9b",
				display_name = "Jana Pihlak",
			),
		),
		ApprovalIdentitySet(
			group = Identity(
				id = "f2926053-5479-4bce-ad4c-8394ce51d6c5",
			),
		),
	],
	display_name = "Title of approval",
	description = "Details of approval",
	approval_type = ApprovalItemType.Basic,
	allow_email_notification = True,
)

result = await graph_client.solutions.approval.approval_items.post(request_body)


```