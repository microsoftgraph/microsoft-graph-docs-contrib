---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Subscription(
	expiration_date_time = "2016-03-22T11:00:00.0000000Z",
)

result = await graph_client.subscriptions.by_subscription_id('subscription-id').patch(request_body)


```