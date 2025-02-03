---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.pendingaccessreviewinstances.item.batch_record_decisions.batch_record_decisions_post_request_body import BatchRecordDecisionsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BatchRecordDecisionsPostRequestBody(
	decision = "Approve",
	justification = "All principals with access need continued access to the resource (Marketing Group) as all the principals are on the marketing team",
	resource_id = "a5c51e59-3fcd-4a37-87a1-835c0c21488a",
)

await graph_client.me.pending_access_review_instances.by_access_review_instance_id('accessReviewInstance-id').batch_record_decisions.post(request_body)


```