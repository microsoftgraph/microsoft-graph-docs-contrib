---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExternalConnection()
request_body.name = 'Contoso HR Service Tickets'

request_body.description = 'Connection to index HR service tickets'




result = await client.external.connections.by_connection_id('externalConnection-id').patch(request_body = request_body)


```