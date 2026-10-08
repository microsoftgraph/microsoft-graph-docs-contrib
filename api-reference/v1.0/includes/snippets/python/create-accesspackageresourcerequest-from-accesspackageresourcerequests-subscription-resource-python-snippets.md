---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_resource_request import AccessPackageResourceRequest
from msgraph.generated.models.access_package_request_type import AccessPackageRequestType
from msgraph.generated.models.access_package_resource import AccessPackageResource
from msgraph.generated.models.access_package_catalog import AccessPackageCatalog
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageResourceRequest(
	request_type = AccessPackageRequestType.AdminAdd,
	resource = AccessPackageResource(
		display_name = "Dev",
		description = "Dev",
		origin_id = "/subscriptions/828b526f-c769-4b19-9797-734b4843b978",
		origin_system = "AzureResources",
		additional_data = {
				"resource_type" : "Subscription",
		}
	),
	catalog = AccessPackageCatalog(
		id = "e8368470-afaf-44da-ba86-13a7318f1995",
	),
)

result = await graph_client.identity_governance.entitlement_management.resource_requests.post(request_body)


```