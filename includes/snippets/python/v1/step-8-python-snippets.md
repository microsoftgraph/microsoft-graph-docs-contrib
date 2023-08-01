---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Subscription()
request_body.expirationDateTime = DateTime('2023-01-12T18:23:45.9356913Z')




result = await client.subscriptions.by_subscription_id('subscription-id').patch(request_body = request_body)


```