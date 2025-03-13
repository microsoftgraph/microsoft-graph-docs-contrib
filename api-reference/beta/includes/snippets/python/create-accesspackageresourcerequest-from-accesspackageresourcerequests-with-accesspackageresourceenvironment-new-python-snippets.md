---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_resource_request import AccessPackageResourceRequest
from msgraph_beta.generated.models.access_package_resource import AccessPackageResource
from msgraph_beta.generated.models.access_package_resource_environment import AccessPackageResourceEnvironment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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