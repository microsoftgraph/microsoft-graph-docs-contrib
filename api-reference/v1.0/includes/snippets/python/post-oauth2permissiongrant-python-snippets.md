---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OAuth2PermissionGrant()
request_body.client_id = 'ef969797-201d-4f6b-960c-e9ed5f31dab5'

request_body.consent_type = 'AllPrincipals'

request_body.resource_id = '943603e4-e787-4fe9-93d1-e30f749aae39'

request_body.scope = 'DelegatedPermissionGrant.ReadWrite.All'




result = await client.oauth2_permission_grants.post(request_body = request_body)


```