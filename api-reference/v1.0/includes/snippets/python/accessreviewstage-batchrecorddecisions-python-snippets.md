---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identitygovernance.accessreviews.definitions.item.instances.item.stages.item.batch_record_decisions.batch_record_decisions_post_request_body import BatchRecordDecisionsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BatchRecordDecisionsPostRequestBody(
	decision = "Approve",
	justification = "All principals with access need continued access to the resource as they are on the same team.",
	resource_id = "a5c51e59-3fcd-4a37-87a1-835c0c21488a",
)

await graph_client.identity_governance.access_reviews.definitions.by_access_review_schedule_definition_id('accessReviewScheduleDefinition-id').instances.by_access_review_instance_id('accessReviewInstance-id').stages.by_access_review_stage_id('accessReviewStage-id').batch_record_decisions.post(request_body)


```