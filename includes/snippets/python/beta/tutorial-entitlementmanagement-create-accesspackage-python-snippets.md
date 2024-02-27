---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package import AccessPackage

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackage(
	catalog_id = "cec5d6ab-c75d-47c0-9c1c-92e89f66e384",
	display_name = "Marketing Campaign",
	description = "Access to resources for the campaign",
)

result = await graph_client.identity_governance.entitlement_management.access_packages.post(request_body)


```