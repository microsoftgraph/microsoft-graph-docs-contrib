---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').claims_mapping_policies.by_claims_mapping_policy_id('claimsMappingPolicy-id').ref.delete()


```