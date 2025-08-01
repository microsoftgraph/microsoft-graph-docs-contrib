---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_resource_request import AccessPackageResourceRequest
from msgraph_beta.generated.models.access_package_resource import AccessPackageResource
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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