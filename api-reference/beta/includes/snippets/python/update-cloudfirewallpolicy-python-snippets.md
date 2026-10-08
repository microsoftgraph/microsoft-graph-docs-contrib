---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.cloud_firewall_policy import CloudFirewallPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudFirewallPolicy(
	description = "Updated policy description",
)

result = await graph_client.network_access.cloud_firewall_policies.by_cloud_firewall_policy_id('cloudFirewallPolicy-id').patch(request_body)


```