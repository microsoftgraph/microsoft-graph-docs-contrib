---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').claims_mapping_policies.by_claims_mapping_policy_id('claimsMappingPolicy-id').ref.delete()


```