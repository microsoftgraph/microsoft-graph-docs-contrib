---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity.authentication_events_flows.by_authentication_events_flow_id('authenticationEventsFlow-id').graph_external_users_self_service_sign_up_events_flow.on_attribute_collection.graph_on_attribute_collection_external_users_self_service_sign_up.attributes.get()


```