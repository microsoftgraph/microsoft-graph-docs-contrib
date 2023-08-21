---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExternalConnection()
request_body.id = 'contosohr'

request_body.name = 'Contoso HR'

request_body.description = 'Connection to index Contoso HR system'




result = await client.external.connections.post(request_body = request_body)


```