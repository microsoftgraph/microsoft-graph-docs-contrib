---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.network_access.cloud_firewall_policies.by_cloud_firewall_policy_id('cloudFirewallPolicy-id').policy_rules.by_policy_rule_id('policyRule-id').get()


```