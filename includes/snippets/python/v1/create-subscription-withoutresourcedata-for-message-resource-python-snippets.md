---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Subscription(
	change_type = "created",
	notification_url = "https://webhook.azurewebsites.net/api/send/myNotifyClient",
	resource = "users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages",
	expiration_date_time = "2021-07-07T21:42:18.2257768+00:00",
	client_state = "secretClientState",
)

result = await graph_client.subscriptions.post(body = request_body)


```