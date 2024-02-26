---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_review_instance_decision_item import AccessReviewInstanceDecisionItem

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReviewInstanceDecisionItem(
	decision = "Approve",
	justification = "This person is still on my team",
)

result = await graph_client.identity_governance.access_reviews.definitions.by_access_review_schedule_definition_id('accessReviewScheduleDefinition-id').instances.by_access_review_instance_id('accessReviewInstance-id').stages.by_access_review_stage_id('accessReviewStage-id').decisions.by_access_review_instance_decision_item_id('accessReviewInstanceDecisionItem-id').patch(request_body)


```