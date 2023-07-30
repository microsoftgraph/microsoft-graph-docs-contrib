---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Subscription()
request_body.expirationDateTime = DateTime('2016-03-22T11:00:00.0000000Z')




result = await client.subscriptions.by_subscription_id('subscription-id').patch(request_body = request_body)


```