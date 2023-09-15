---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Subscription(
	expiration_date_time = "2023-01-12T18:23:45.9356913Z",
)

result = await graph_client.subscriptions.by_subscription_id('subscription-id').patch(body = request_body)


```