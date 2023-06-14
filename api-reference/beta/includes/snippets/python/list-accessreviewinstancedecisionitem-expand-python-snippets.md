---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AccessReviewInstanceDecisionItemRequestBuilder.AccessReviewInstanceDecisionItemRequestBuilderGetQueryParameters(
		expand = ["instance($expand=definition)"],
)

request_configuration = AccessReviewInstanceDecisionItemRequestBuilder.AccessReviewInstanceDecisionItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.acce_reviews.decisions.by_decision_id('accessReviewInstanceDecisionItem-id').get(request_configuration = request_configuration)


```