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
	display_name = "Contoso default HRD Policy",
)

result = await graph_client.policies.home_realm_discovery_policies.by_home_realm_discovery_policy_id('homeRealmDiscoveryPolicy-id').patch(request_body)


```