---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = InvitePostRequestBody(
	recipients = [
		DriveRecipient(
			email = "ryan@contoso.com",
		),
	]
	message = "Here's the file that we're collaborating on.",
	require_sign_in = True,
	send_invitation = True,
	roles = [
		"write",
	]
	password = "password123",
	expiration_date_time = "2018-07-15T14:00:00.000Z",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').invite.post(body = request_body)


```