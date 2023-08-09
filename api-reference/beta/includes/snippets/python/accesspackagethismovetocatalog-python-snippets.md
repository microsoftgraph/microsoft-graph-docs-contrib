---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MoveToCatalogPostRequestBody()
request_body.catalog_id = '3301434b-99bd-46be-923b-d762c30c8e8b'




await client.identity_governance.entitlement_management.acce_packages.by_acce_package_id('accessPackage-id').move_to_catalog.post(request_body = request_body)


```