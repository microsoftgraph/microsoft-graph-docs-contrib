---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessReviewInstanceDecisionItem()
request_body.decision = 'Approve'

request_body.justification = 'This person is still on my team'




result = await client.identity_governance.acce_reviews.definitions.by_definition_id('accessReviewScheduleDefinition-id').instances.by_instance_id('accessReviewInstance-id').stages.by_stage_id('accessReviewStage-id').decisions.by_decision_id('accessReviewInstanceDecisionItem-id').patch(request_body = request_body)


```