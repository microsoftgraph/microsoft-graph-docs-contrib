---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.shares.item.permission.grant.grant_post_request_body import GrantPostRequestBody
from msgraph_beta.generated.models.drive_recipient import DriveRecipient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GrantPostRequestBody(
	recipients = [
		DriveRecipient(
			email = "john@contoso.com",
		),
		DriveRecipient(
			email = "ryan@external.com",
		),
	],
	roles = [
		"read",
	],
)

result = await graph_client.shares.by_shared_drive_item_id('sharedDriveItem-id').permission.grant.post(request_body)


```