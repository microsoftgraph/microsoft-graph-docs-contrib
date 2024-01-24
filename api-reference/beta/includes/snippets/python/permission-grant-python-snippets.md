---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

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