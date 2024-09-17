---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.reference_update import ReferenceUpdate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReferenceUpdate(
	odata_id = "https://graph.microsoft.com/beta/identity/apiConnectors/{id}",
)

await graph_client.identity.b2x_user_flows.by_b2x_identity_user_flow_id('b2xIdentityUserFlow-id').api_connector_configuration.post_attribute_collection.ref.put(request_body)


```