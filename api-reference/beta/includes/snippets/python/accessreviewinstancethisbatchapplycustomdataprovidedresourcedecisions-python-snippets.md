---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.accessreviews.definitions.item.instances.item.batch_apply_custom_data_provided_resource_decisions.batch_apply_custom_data_provided_resource_decisions_post_request_body import BatchApplyCustomDataProvidedResourceDecisionsPostRequestBody
from msgraph_beta.generated.models.access_review_instance_decision_item_apply_result import AccessReviewInstanceDecisionItemApplyResult
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BatchApplyCustomDataProvidedResourceDecisionsPostRequestBody(
	apply_result = AccessReviewInstanceDecisionItemApplyResult.AppliedSuccessfully,
	apply_description = "Access was removed from production application: GitHub-app.",
	custom_data_provided_resource_id = "5c728447-be5c-4565-b4d3-cb248b609891",
)

await graph_client.identity_governance.access_reviews.definitions.by_access_review_schedule_definition_id('accessReviewScheduleDefinition-id').instances.by_access_review_instance_id('accessReviewInstance-id').batch_apply_custom_data_provided_resource_decisions.post(request_body)


```