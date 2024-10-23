---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package import AccessPackage
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackage(
	catalog_id = "aa2f6514-3232-46e7-a08a-2411ad8d7128",
	display_name = "sales reps",
	description = "outside sales representatives",
)

result = await graph_client.identity_governance.entitlement_management.access_packages.post(request_body)


```