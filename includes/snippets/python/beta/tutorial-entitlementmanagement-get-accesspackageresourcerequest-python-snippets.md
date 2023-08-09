---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageResourceRequest()
request_body.catalog_id = 'cec5d6ab-c75d-47c0-9c1c-92e89f66e384'

request_body.request_type = 'AdminAdd'

request_body.justification = ''

access_package_resource = AccessPackageResource()
access_package_resource.display_name = 'Marketing resources'

access_package_resource.description = 'Marketing group'

access_package_resource.resource_type = 'AadGroup'

access_package_resource.origin_id = 'e93e24d1-2b65-4a6c-a1dd-654a12225487'

access_package_resource.origin_system = 'AadGroup'


request_body.access_package_resource = access_package_resource



result = await client.identity_governance.entitlement_management.acces_package_resource_requests.post(request_body = request_body)


```