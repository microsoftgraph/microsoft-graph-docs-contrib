---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackage()
request_body.display_name = 'Access Package New Name'




result = await client.identity_governance.entitlement_management.acce_packages.by_acces_package_id('accessPackage-id').patch(request_body = request_body)


```