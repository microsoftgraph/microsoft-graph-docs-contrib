---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AccessReviewInstanceDecisionItem(
	decision = "Approve",
	justification = "This person is still on my team",
)

result = await graph_client.identity_governance.acce_reviews.definitions.by_definition_id('accessReviewScheduleDefinition-id').instances.by_instance_id('accessReviewInstance-id').stages.by_stage_id('accessReviewStage-id').decisions.by_decision_id('accessReviewInstanceDecisionItem-id').patch(body = request_body)


```