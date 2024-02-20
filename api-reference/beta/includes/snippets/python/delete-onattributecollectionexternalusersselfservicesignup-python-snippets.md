---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.$ref_delete_request_body import $refDeleteRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = $refDeleteRequestBody(
	additional_data = {
			"@odata_id" : "https://graph.microsoft.com/beta/identity/userFlowAttributes/city",
	}
)

await graph_client.identity.authentication_events_flows.by_authentication_events_flow_id('authenticationEventsFlow-id').graph_external_users_self_service_sign_up_events_flow.on_attribute_collection.graph_on_attribute_collection_external_users_self_service_sign_up.attributes.ref.delete(request_body)


```