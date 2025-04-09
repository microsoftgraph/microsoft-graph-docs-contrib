---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_review_policy import AccessReviewPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessReviewPolicy(
	is_group_owner_management_enabled = True,
)

result = await graph_client.policies.access_review_policy.patch(request_body)


```