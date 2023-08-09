---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DismissPostRequestBody()
request_body.dismiss_reason = 'Recommendations is not relevant for my organization because...'




result = await client.directory.recommendations.by_recommendation_id('recommendation-id').dismiss.post(request_body = request_body)


```