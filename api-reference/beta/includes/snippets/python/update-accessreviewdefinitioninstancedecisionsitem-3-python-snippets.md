---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_review_instance_decision_item import AccessReviewInstanceDecisionItem
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessReviewInstanceDecisionItem(
	apply_result = "AppliedSuccessfully",
	additional_data = {
			"apply_description" : "Completed by John Doe",
	}
)

result = await graph_client.identity_governance.access_reviews.definitions.by_access_review_schedule_definition_id('accessReviewScheduleDefinition-id').instances.by_access_review_instance_id('accessReviewInstance-id').decisions.by_access_review_instance_decision_item_id('accessReviewInstanceDecisionItem-id').patch(request_body)


```