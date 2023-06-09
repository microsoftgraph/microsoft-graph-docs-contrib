---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IdentityProviderBase()
request_body.@odata_type = 'microsoft.graph.socialIdentityProvider'

request_body.display_name = 'Login with Amazon'

additional_data = [
'identity_provider_type' => 'Amazon', 
'client_id' => '56433757-cadd-4135-8431-2c9e3fd68ae8', 
'client_secret' => '000000000000', 
];
request_body.additional_data(additional_data)





result = await client.identity.identity_providers.post(request_body = request_body)


```