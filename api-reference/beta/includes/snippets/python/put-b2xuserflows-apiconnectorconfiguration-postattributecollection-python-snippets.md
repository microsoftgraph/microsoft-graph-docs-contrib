---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReferenceUpdate()
request_body.@odata_id = 'https://graph.microsoft.com/beta/identity/apiConnectors/{id}'




await client.identity.b2x_user_flows.by_b2x_user_flow_id('b2xIdentityUserFlow-id').api_connector_configuration.post_attribute_collection.ref.put(request_body = request_body)


```