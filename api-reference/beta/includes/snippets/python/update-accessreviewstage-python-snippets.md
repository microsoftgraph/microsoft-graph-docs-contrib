---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_review_stage import AccessReviewStage
from msgraph_beta.generated.models.access_review_reviewer_scope import AccessReviewReviewerScope
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessReviewStage(
	odata_type = "#microsoft.graph.accessReviewStage",
	reviewers = [
		AccessReviewReviewerScope(
			query = "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
			query_type = "MicrosoftGraph",
		),
	],
	fallback_reviewers = [
		AccessReviewReviewerScope(
			query = "/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
			query_type = "MicrosoftGraph",
		),
		AccessReviewReviewerScope(
			query = "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
			query_type = "MicrosoftGraph",
		),
	],
)

result = await graph_client.identity_governance.access_reviews.definitions.by_access_review_schedule_definition_id('accessReviewScheduleDefinition-id').instances.by_access_review_instance_id('accessReviewInstance-id').stages.by_access_review_stage_id('accessReviewStage-id').patch(request_body)


```