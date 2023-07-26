---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SocialIdentityProvider()
request_body.@odata_type = '#microsoft.graph.socialIdentityProvider'

request_body.display_name = 'Apple'




result = await client.identity.identity_providers.by_identity_provider_id('identityProviderBase-id').patch(request_body = request_body)


```