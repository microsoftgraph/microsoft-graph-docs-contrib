---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.reference_create import ReferenceCreate

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReferenceCreate(
	odata_id = "https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/92037c7a-a875-49a0-814e-8ec30f880e2e",
)

await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').claims_mapping_policies.ref.post(request_body)


```