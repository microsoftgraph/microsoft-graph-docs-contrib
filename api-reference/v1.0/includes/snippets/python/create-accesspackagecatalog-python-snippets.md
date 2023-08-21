---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageCatalog()
request_body.display_name = 'sales'

request_body.description = 'for employees working with sales and outside sales partners'

request_body.state(AccessPackageCatalogState.Published('accesspackagecatalogstate.published'))

request_body.is_externally_visible = True




result = await client.identity_governance.entitlement_management.catalogs.post(request_body = request_body)


```