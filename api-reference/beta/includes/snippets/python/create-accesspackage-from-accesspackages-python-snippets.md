---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackage()
request_body.catalog_id = 'aa2f6514-3232-46e7-a08a-2411ad8d7128'

request_body.display_name = 'sales reps'

request_body.description = 'outside sales representatives'




result = await client.identity_governance.entitlement_management.acces_packages.post(request_body = request_body)


```