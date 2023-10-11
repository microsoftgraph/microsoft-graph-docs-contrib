---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AdministrativeUnit()
request_body.display_name = 'Executive Division'

request_body.description = 'Executive division administration'

request_body.is_member_management_restricted = True




result = await client.administrative_units.post(request_body = request_body)


```