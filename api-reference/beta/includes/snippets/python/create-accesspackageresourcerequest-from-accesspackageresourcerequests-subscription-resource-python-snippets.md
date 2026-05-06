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
	catalog_id = "e8368470-afaf-44da-ba86-13a7318f1995",
	request_type = "AdminAdd",
	justification = "",
	access_package_resource = AccessPackageResource(
		id = "",
		display_name = "Dev",
		description = "Dev",
		resource_type = "Subscription",
		origin_id = "/subscriptions/828b526f-c769-4b19-9797-734b4843b978",
		origin_system = "AzureResources",
	),
)

result = await graph_client.identity_governance.entitlement_management.access_package_resource_requests.post(request_body)


```