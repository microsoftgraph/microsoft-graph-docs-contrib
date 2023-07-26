---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageResourceRequest()
request_body.catalog_id = 'de9315c1-272b-4905-924b-cc112ca180c7'

access_package_resource = AccessPackageResource()
access_package_resource.display_name = 'Community Outreach'

access_package_resource.description = 'https://contoso.sharepoint.com/sites/CSR'

access_package_resource.resource_type = 'SharePoint Online Site'

access_package_resource.origin_id = 'https://contoso.sharepoint.com/sites/CSR'

access_package_resource.origin_system = 'SharePointOnline'

additional_data = [
'access_package_resource_environment@odata_bind' => 'accessPackageResourceEnvironments/615f2218-678f-471f-a60a-02c2f4f80c57', 
];
access_package_resource.additional_data(additional_data)



request_body.access_package_resource = access_package_resource
request_body.request_type = 'AdminAdd'




result = await client.identity_governance.entitlement_management.acces_package_resource_requests.post(request_body = request_body)


```