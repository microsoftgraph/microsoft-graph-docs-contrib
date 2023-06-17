---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageResourceRequest()
request_body.catalog_id = '26ac0c0a-08bc-4a7b-a313-839f58044ba5'

request_body.request_type = 'AdminAdd'

request_body.justification = ''

access_package_resource = AccessPackageResource()
access_package_resource.display_name = 'Sales'

access_package_resource.description = 'https://contoso.sharepoint.com/sites/Sales'

access_package_resource.url = 'https://contoso.sharepoint.com/sites/Sales'

access_package_resource.resource_type = 'SharePoint Online Site'

access_package_resource.origin_id = 'https://contoso.sharepoint.com/sites/Sales'

access_package_resource.origin_system = 'SharePointOnline'


request_body.access_package_resource = access_package_resource



result = await client.identity_governance.entitlement_management.acces_package_resource_requests.post(request_body = request_body)


```