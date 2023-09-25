---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = GrantPostRequestBody(
	recipients = [
		DriveRecipient(
			email = "john@contoso.com",
		),
		DriveRecipient(
			email = "ryan@external.com",
		),
	]
	roles = [
		"read",
	]
)

result = await graph_client.shares.by_share_id('sharedDriveItem-id').permission.grant.post(body = request_body)


```