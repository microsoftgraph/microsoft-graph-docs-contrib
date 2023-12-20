---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Subscription(
	change_type = "created,updated",
	notification_url = "https://webhook.azurewebsites.net/notificationClient",
	lifecycle_notification_url = "https://webhook.azurewebsites.net/api/lifecycleNotifications",
	resource = "/me/mailfolders('inbox')/messages",
	expiration_date_time = "2016-03-20T11:00:00.0000000Z",
	client_state = "SecretClientState",
)

result = await graph_client.subscriptions.post(request_body)


```