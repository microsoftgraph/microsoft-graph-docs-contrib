---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.groups.item.evaluate_dynamic_membership.evaluate_dynamic_membership_post_request_body import EvaluateDynamicMembershipPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EvaluateDynamicMembershipPostRequestBody(
	member_id = "319b41e8-d9e4-42f8-bdc9-741113f48b33",
)

result = await graph_client.groups.by_group_id('group-id').evaluate_dynamic_membership.post(request_body)


```