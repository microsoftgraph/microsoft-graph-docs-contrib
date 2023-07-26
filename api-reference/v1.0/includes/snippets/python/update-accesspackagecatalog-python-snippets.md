---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageCatalog()
request_body.display_name = 'Catalog One'




result = await client.identity_governance.entitlement_management.catalogs.by_catalog_id('accessPackageCatalog-id').patch(request_body = request_body)


```