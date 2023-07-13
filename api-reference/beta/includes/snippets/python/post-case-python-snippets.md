---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Case()
request_body.display_name = 'My Case 1'




result = await client.compliance.ediscovery.cases.post(request_body = request_body)


```