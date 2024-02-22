---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_resource_request import AccessPackageResourceRequest
from msgraph.generated.models.access_package_resource import AccessPackageResource
from msgraph.generated.models.access_package_catalog import AccessPackageCatalog

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageResourceRequest(
	request_type = AccessPackageRequestType.AdminAdd,
	resource = AccessPackageResource(
		origin_id = "https://microsoft.sharepoint.com/sites/Example",
		origin_system = "SharePointOnline",
	),
	catalog = AccessPackageCatalog(
		id = "beedadfe-01d5-4025-910b-84abb9369997",
	),
)

result = await graph_client.identity_governance.entitlement_management.resource_requests.post(request_body)


```