---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageResourceRequest()
request_body.catalog_id = 'beedadfe-01d5-4025-910b-84abb9369997'

request_body.request_type = 'AdminRemove'

access_package_resource = AccessPackageResource()
access_package_resource.id = '354078e5-dbce-4894-8af4-0ab274d41662'


request_body.access_package_resource = access_package_resource



result = await client.identity_governance.entitlement_management.acces_package_resource_requests.post(request_body = request_body)


```