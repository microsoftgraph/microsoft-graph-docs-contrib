---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.network_access.forwarding_policies.by_forwarding_policy_id('forwardingPolicy-id').policy_rules.by_policy_rule_id('policyRule-id').patch(None)


```