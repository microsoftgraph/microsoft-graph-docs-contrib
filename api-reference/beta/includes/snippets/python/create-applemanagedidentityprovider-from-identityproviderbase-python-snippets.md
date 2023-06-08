---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IdentityProviderBase()
request_body.@odata_type = 'microsoft.graph.appleManagedIdentityProvider'

request_body.display_name = 'Sign in with Apple'

additional_data = [
'developer_id' => 'UBF8T346G9', 
'service_id' => 'com.microsoft.rts.b2c.test.client', 
'key_id' => '99P6D879C4', 
'certificate_data' => '******', 
];
request_body.additional_data(additional_data)





result = await client.identity.identity_providers.post(request_body = request_body)


```