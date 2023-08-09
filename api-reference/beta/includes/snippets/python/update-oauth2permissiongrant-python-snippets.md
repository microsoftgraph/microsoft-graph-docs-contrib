---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OAuth2PermissionGrant()
request_body.scope = 'User.ReadBasic.All Group.ReadWrite.All'




result = await client.oauth2_permission_grants.by_oauth2_permission_grant_id('oAuth2PermissionGrant-id').patch(request_body = request_body)


```