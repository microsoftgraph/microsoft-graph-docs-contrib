---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.app_management_policy import AppManagementPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AppManagementPolicy(
	is_enabled = False,
)

result = await graph_client.policies.app_management_policies.by_app_management_policy_id('appManagementPolicy-id').patch(request_body)


```