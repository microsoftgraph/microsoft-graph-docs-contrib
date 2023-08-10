---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AuthorityTemplate()
request_body.@odata_type = '#microsoft.graph.security.authorityTemplate'

request_body.display_name = 'String'

created_by = IdentitySet()
created_by.@odata_type = 'microsoft.graph.identitySet'


request_body.created_by = created_by



result = await client.security.labels.authorities.post(request_body = request_body)


```