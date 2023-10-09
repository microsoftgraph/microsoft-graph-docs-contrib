---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AccessReviewStage(
	odata_type = "#microsoft.graph.accessReviewStage",
	reviewers = [
		AccessReviewReviewerScope(
			query = "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
			query_type = "MicrosoftGraph",
		),
	]
	fallback_reviewers = [
		AccessReviewReviewerScope(
			query = "/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
			query_type = "MicrosoftGraph",
		),
		AccessReviewReviewerScope(
			query = "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
			query_type = "MicrosoftGraph",
		),
	]
)

result = await graph_client.identity_governance.acce_reviews.definitions.by_definition_id('accessReviewScheduleDefinition-id').instances.by_instance_id('accessReviewInstance-id').stages.by_stage_id('accessReviewStage-id').patch(body = request_body)


```