---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.home_realm_discovery_policy import HomeRealmDiscoveryPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = HomeRealmDiscoveryPolicy(
	definition = [
		"{\"HomeRealmDiscoveryPolicy\":{\"AccelerateToFederatedDomain\":true,\"PreferredDomain\":\"federated.example.edu\",\"AlternateIdLogin\":{\"Enabled\":true}}}",
	],
	display_name = "displayName-value",
	is_organization_default = True,
)

result = await graph_client.policies.home_realm_discovery_policies.post(request_body)


```