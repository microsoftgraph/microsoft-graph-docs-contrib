---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.access_package import AccessPackage
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackage(
	display_name = "Marketing Campaign",
	description = "Access to resources for the campaign",
	additional_data = {
			"catalog_id" : "cec5d6ab-c75d-47c0-9c1c-92e89f66e384",
	}
)

result = await graph_client.identity_governance.entitlement_management.access_packages.post(request_body)


```