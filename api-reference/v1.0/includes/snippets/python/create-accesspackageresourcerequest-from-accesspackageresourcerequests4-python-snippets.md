---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageResourceRequest()
request_body.requesttype(AccessPackageRequestType.AdminAdd('accesspackagerequesttype.adminadd'))

resource = AccessPackageResource()
resource.display_name = 'Test group'

resource.origin_id = '8ab659d0-3839-427d-8c54-5ae92f0b3e2e'

resource.origin_system = 'AadGroup'


request_body.resource = resource
catalog = AccessPackageCatalog()
catalog.id = 'beedadfe-01d5-4025-910b-84abb9369997'


request_body.catalog = catalog



result = await client.identity_governance.entitlement_management.resource_requests.post(request_body = request_body)


```