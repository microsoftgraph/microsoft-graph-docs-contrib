---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_resource_request import AccessPackageResourceRequest
from msgraph.generated.models.access_package_resource import AccessPackageResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageResourceRequest(
	catalog_id = "26ac0c0a-08bc-4a7b-a313-839f58044ba5",
	request_type = "AdminAdd",
	justification = "",
	access_package_resource = AccessPackageResource(
		display_name = "Sales",
		description = "https://contoso.sharepoint.com/sites/Sales",
		url = "https://contoso.sharepoint.com/sites/Sales",
		resource_type = "SharePoint Online Site",
		origin_id = "https://contoso.sharepoint.com/sites/Sales",
		origin_system = "SharePointOnline",
	),
)

result = await graph_client.identity_governance.entitlement_management.access_package_resource_requests.post(request_body)


```