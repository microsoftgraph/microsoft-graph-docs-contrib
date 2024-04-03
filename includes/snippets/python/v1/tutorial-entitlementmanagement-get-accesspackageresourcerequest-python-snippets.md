---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_resource_request import AccessPackageResourceRequest

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageResourceRequest(
	request_type = AccessPackageRequestType.AdminAdd,
	additional_data = {
			"catalog_id" : "cec5d6ab-c75d-47c0-9c1c-92e89f66e384",
			"justification" : "",
			"access_package_resource" : {
					"resource_type" : "AadGroup",
					"origin_id" : "e93e24d1-2b65-4a6c-a1dd-654a12225487",
					"origin_system" : "AadGroup",
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.resource_requests.post(request_body)


```