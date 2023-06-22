---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Permission()
request_body.Roles(['write', ])

granted_to_identities_identity_set1 = IdentitySet()
granted_to_identities_identity_set1application = Identity()
granted_to_identities_identity_set1application.id = '89ea5c94-7736-4e25-95ad-3fa95f62b66e'

granted_to_identities_identity_set1application.display_name = 'Contoso Time Manager App'


granted_to_identities_identity_set1.application = granted_to_identities_identity_set1application

grantedToIdentitiesArray []= grantedToIdentitiesIdentitySet1;
request_body.grantedtoidentities(grantedToIdentitiesArray)





result = await client.sites.by_site_id('site-id').permissions.post(request_body = request_body)


```