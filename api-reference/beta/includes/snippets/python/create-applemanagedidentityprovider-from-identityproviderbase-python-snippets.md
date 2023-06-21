---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AppleManagedIdentityProvider()
request_body.@odata_type = 'microsoft.graph.appleManagedIdentityProvider'

request_body.display_name = 'Sign in with Apple'

request_body.developer_id = 'UBF8T346G9'

request_body.service_id = 'com.microsoft.rts.b2c.test.client'

request_body.key_id = '99P6D879C4'

request_body.certificate_data = '******'




result = await client.identity.identity_providers.post(request_body = request_body)


```