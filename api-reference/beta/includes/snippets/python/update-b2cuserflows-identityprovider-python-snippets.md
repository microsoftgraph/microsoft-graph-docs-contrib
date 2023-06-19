---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReferenceCreate()
request_body.@odata_id = 'https://graph.microsoft.com/beta/identityProviders/{id}'




await client.identity.b2c_user_flows.by_b2c_user_flow_id('b2cIdentityUserFlow-id').identity_providers.ref.post(request_body = request_body)


```