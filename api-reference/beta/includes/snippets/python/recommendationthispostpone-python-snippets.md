---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PostponePostRequestBody()
request_body.postponeUntilDateTime = DateTime('2023-02-01T02:53:00Z')




result = await client.directory.recommendations.by_recommendation_id('recommendation-id').postpone.post(request_body = request_body)


```