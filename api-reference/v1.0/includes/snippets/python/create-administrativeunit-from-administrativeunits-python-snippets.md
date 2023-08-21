---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AdministrativeUnit()
request_body.display_name = 'Seattle District Technical Schools'

request_body.description = 'Seattle district technical schools administration'

request_body.visibility = 'HiddenMembership'




result = await client.directory.administrative_units.post(request_body = request_body)


```