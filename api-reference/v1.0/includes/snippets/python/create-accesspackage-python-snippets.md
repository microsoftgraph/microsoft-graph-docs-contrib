---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackage()
request_body.display_name = 'sales reps'

request_body.description = 'outside sales representatives'

request_body.is_hidden = False

catalog = AccessPackageCatalog()
catalog.id = '66584aae-98bb-48cc-9458-7bee5d2a6577'


request_body.catalog = catalog



result = await client.identity_governance.entitlement_management.acces_packages.post(request_body = request_body)


```