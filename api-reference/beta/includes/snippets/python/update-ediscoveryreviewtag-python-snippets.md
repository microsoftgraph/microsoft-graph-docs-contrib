---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EdiscoveryReviewTag(
	display_name = "My tag API 2",
	description = "Use Graph API to create tags (updated)",
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').tags.by_ediscovery_review_tag_id('ediscoveryReviewTag-id').patch(request_body)


```