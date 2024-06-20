---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.solutions.backup_restore.protection_policies.by_protection_policy_base_id('protectionPolicyBase-id').activate.post()


```