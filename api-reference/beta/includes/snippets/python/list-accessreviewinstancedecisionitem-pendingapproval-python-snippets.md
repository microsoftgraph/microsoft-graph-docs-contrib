---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = DecisionsRequestBuilder.DecisionsRequestBuilderGetQueryParameters(
		top = 100,
		skip = 0,
)

request_configuration = DecisionsRequestBuilder.DecisionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.pending_acce_review_instances.by_pending_acce_review_instance_id('accessReviewInstance-id').decisions.get(request_configuration = request_configuration)


```