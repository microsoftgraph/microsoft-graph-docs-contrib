---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExternalGroup()
request_body.id = '31bea3d537902000'

request_body.display_name = 'Contoso Marketing'

request_body.description = 'The product marketing team'




result = await client.external.connections.by_connection_id('externalConnection-id').groups.post(request_body = request_body)


```