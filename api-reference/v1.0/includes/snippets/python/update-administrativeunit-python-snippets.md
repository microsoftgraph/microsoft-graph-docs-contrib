---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AdministrativeUnit()
request_body.display_name = 'Greater Seattle District Technical Schools'




result = await client.directory.administrative_units.by_administrative_unit_id('administrativeUnit-id').patch(request_body = request_body)


```