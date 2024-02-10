---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package import AccessPackage

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackage(
	catalog_id = "aa2f6514-3232-46e7-a08a-2411ad8d7128",
	display_name = "sales reps",
	description = "outside sales representatives",
)

result = await graph_client.identity_governance.entitlement_management.access_packages.post(request_body)


```