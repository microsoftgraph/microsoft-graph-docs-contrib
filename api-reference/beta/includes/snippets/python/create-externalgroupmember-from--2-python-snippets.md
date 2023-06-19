---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Identity()
request_body.id = 'e5477431-1038-484e-bf69-1dfedb97a110'

request_body.type(IdentityType.ExternalGroup('identitytype.externalgroup'))




result = await client.external.connections.by_connection_id('externalConnection-id').groups.by_group_id('externalGroup-id').members.post(request_body = request_body)


```