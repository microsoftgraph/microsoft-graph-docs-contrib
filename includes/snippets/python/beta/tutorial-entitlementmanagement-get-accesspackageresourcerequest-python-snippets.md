---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_resource_request import AccessPackageResourceRequest
from msgraph.generated.models.access_package_resource import AccessPackageResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageResourceRequest(
	catalog_id = "cec5d6ab-c75d-47c0-9c1c-92e89f66e384",
	request_type = "AdminAdd",
	justification = "",
	access_package_resource = AccessPackageResource(
		display_name = "Marketing resources",
		description = "Marketing group",
		resource_type = "AadGroup",
		origin_id = "e93e24d1-2b65-4a6c-a1dd-654a12225487",
		origin_system = "AadGroup",
	),
)

result = await graph_client.identity_governance.entitlement_management.access_package_resource_requests.post(request_body)


```