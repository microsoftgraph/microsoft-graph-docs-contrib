---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.reference_create import ReferenceCreate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReferenceCreate(
	odata_id = "https://graph.microsoft.com/beta/policies/tokenLifetimePolicies/4d2f137b-e8a9-46da-a5c3-cc85b2b840a4",
)

await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').token_lifetime_policies.ref.post(request_body)


```