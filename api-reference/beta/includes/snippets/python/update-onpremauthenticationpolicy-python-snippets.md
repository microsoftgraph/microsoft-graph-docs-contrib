---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.on_prem_authentication_policy import OnPremAuthenticationPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnPremAuthenticationPolicy(
	deleted_date_time = None,
	description = "Updates to policy definition to manage and control authentication settings.",
	display_name = "Update policy name",
	definition = [
		"{\"Version\":1,\"LastUpdatedTimestamp\":\"2025-02-29T22:47:12.7764932Z\", \"Key1\": \"Value1\", \"Key2\": {\"SubKey1\": \"SubValue1\"}}",
	],
)

result = await graph_client.policies.on_prem_authentication_policies.by_on_prem_authentication_policy_id('onPremAuthenticationPolicy-id').patch(request_body)


```