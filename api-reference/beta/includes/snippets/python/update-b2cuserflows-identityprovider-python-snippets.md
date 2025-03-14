---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.reference_create import ReferenceCreate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReferenceCreate(
	odata_id = "https://graph.microsoft.com/beta/identityProviders/{id}",
)

await graph_client.identity.b2c_user_flows.by_b2c_identity_user_flow_id('b2cIdentityUserFlow-id').identity_providers.ref.post(request_body)


```