---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.network_access.filtering_policies.by_filtering_policy_id('filteringPolicy-id').policy_rules.by_policy_rule_id('policyRule-id').delete()


```