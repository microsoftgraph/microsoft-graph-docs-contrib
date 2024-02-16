---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_resource_request import AccessPackageResourceRequest
from msgraph.generated.models.access_package_resource import AccessPackageResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageResourceRequest(
	catalog_id = "beedadfe-01d5-4025-910b-84abb9369997",
	request_type = "AdminAdd",
	access_package_resource = AccessPackageResource(
		origin_id = "c6294667-7348-4f5a-be73-9d2c65f574f3",
		origin_system = "AadGroup",
	),
)

result = await graph_client.identity_governance.entitlement_management.access_package_resource_requests.post(request_body)


```