---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.tenant_relationships.managed_tenants.conditional_access_policy_coverages.by_conditional_access_policy_coverage_id('conditionalAccessPolicyCoverage-id').get()


```