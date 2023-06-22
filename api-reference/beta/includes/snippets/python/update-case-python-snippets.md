---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Case()
request_body.display_name = 'My Case 1 - Renamed'

request_body.description = 'Updated description'

request_body.external_id = 'Updated externalId'




result = await client.compliance.ediscovery.cases.by_case_id('case-id').patch(request_body = request_body)


```