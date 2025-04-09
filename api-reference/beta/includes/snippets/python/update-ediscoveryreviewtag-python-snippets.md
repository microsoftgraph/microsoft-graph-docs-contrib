---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.ediscovery_review_tag import EdiscoveryReviewTag
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EdiscoveryReviewTag(
	display_name = "My tag API 2",
	description = "Use Graph API to create tags (updated)",
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').tags.by_ediscovery_review_tag_id('ediscoveryReviewTag-id').patch(request_body)


```