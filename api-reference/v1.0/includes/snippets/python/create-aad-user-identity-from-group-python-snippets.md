---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Identity()
request_body.id = 'e811976d-83df-4cbd-8b9b-5215b18aa874'

request_body.type(IdentityType.User('identitytype.user'))




result = await client.external.connections.by_connection_id('externalConnection-id').groups.by_group_id('externalGroup-id').members.post(request_body = request_body)


```