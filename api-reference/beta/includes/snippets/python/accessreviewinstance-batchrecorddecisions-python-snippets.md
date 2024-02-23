---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.batch_record_decisions_post_request_body import BatchRecordDecisionsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = BatchRecordDecisionsPostRequestBody(
	decision = "Approve",
	justification = "All principals with access need continued access to the resource (Marketing Group) as all the principals are on the marketing team",
	resource_id = "a5c51e59-3fcd-4a37-87a1-835c0c21488a",
)

await graph_client.me.pending_access_review_instances.by_access_review_instance_id('accessReviewInstance-id').batch_record_decisions.post(request_body)


```