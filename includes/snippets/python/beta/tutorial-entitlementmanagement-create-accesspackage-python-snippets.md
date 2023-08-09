---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackage()
request_body.catalog_id = 'cec5d6ab-c75d-47c0-9c1c-92e89f66e384'

request_body.display_name = 'Marketing Campaign'

request_body.description = 'Access to resources for the campaign'




result = await client.identity_governance.entitlement_management.acces_packages.post(request_body = request_body)


```