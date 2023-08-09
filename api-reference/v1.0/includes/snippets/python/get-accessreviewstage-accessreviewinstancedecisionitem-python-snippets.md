---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AccessReviewInstanceDecisionItemRequestBuilder.AccessReviewInstanceDecisionItemRequestBuilderGetQueryParameters(
		select = ["accessReviewId","reviewedDateTime","decision","justification","recommendation","reviewedBy","target"],
)

request_configuration = AccessReviewInstanceDecisionItemRequestBuilder.AccessReviewInstanceDecisionItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.acce_reviews.definitions.by_definition_id('accessReviewScheduleDefinition-id').instances.by_instance_id('accessReviewInstance-id').stages.by_stage_id('accessReviewStage-id').decisions.by_decision_id('accessReviewInstanceDecisionItem-id').get(request_configuration = request_configuration)


```