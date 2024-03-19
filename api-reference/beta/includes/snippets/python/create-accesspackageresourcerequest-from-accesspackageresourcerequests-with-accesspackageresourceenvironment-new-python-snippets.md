---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_resource_request import AccessPackageResourceRequest
from msgraph.generated.models.access_package_resource import AccessPackageResource
from msgraph.generated.models.access_package_resource_environment import AccessPackageResourceEnvironment

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageResourceRequest(
	catalog_id = "de9315c1-272b-4905-924b-cc112ca180c7",
	access_package_resource = AccessPackageResource(
		display_name = "Community Outreach",
		description = "https://contoso.sharepoint.com/sites/CSR",
		resource_type = "SharePoint Online Site",
		origin_id = "https://contoso.sharepoint.com/sites/CSR",
		origin_system = "SharePointOnline",
		access_package_resource_environment = AccessPackageResourceEnvironment(
			origin_id = "https://contoso-admin.sharepoint.com/",
		),
	),
	request_type = "AdminAdd",
)

result = await graph_client.identity_governance.entitlement_management.access_package_resource_requests.post(request_body)


```