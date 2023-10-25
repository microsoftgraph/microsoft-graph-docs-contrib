---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

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

result = await graph_client.identity_governance.entitlement_management.acces_package_resource_requests.post(body = request_body)


```