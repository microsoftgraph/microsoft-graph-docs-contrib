---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PostponePostRequestBody()
request_body.postponeUntilDateTime = DateTime('2023-03-01T09:40:39.0420371Z')




result = await client.directory.recommendations.by_recommendation_id('recommendation-id').impacted_resources.by_impacted_resource_id('impactedResource-id').postpone.post(request_body = request_body)


```