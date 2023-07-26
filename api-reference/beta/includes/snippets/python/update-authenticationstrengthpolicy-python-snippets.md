---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AuthenticationStrengthPolicy()
request_body.@odata_type = '#microsoft.graph.authenticationStrengthPolicy'

request_body.display_name = 'FIDO2 only'

request_body.description = 'An auth strength allowing only FIDO2 security keys.'




result = await client.policies.authentication_strength_policies.by_authentication_strength_policie_id('authenticationStrengthPolicy-id').patch(request_body = request_body)


```