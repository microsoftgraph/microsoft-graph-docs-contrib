---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.cloud_firewall_policy import CloudFirewallPolicy
from msgraph_beta.generated.models.networkaccess.cloud_firewall_policy_settings import CloudFirewallPolicySettings
from msgraph_beta.generated.models.cloud_firewall_action import CloudFirewallAction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudFirewallPolicy(
	odata_type = "#microsoft.graph.networkaccess.cloudFirewallPolicy",
	name = "Block unauthorized egress",
	description = "Policy to block unauthorized outbound connections",
	settings = CloudFirewallPolicySettings(
		default_action = CloudFirewallAction.Allow,
	),
)

result = await graph_client.network_access.cloud_firewall_policies.post(request_body)


```