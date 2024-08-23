---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.home_realm_discovery_policy import HomeRealmDiscoveryPolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = HomeRealmDiscoveryPolicy(
	definition = [
		"{\"HomeRealmDiscoveryPolicy\":{\"AccelerateToFederatedDomain\":true,\"PreferredDomain\":\"federated.example.edu\",\"AlternateIdLogin\":{\"Enabled\":true}}}",
	],
	display_name = "displayName-value",
	is_organization_default = True,
)

result = await graph_client.policies.home_realm_discovery_policies.post(request_body)


```