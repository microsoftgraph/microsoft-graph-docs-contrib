---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.permissions_analytics.aws.permissions_creep_index_distributions.by_permissions_creep_index_distribution_id('permissionsCreepIndexDistribution-id').get()


```