---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackage(
	display_name = "sales reps",
	description = "outside sales representatives",
	is_hidden = False,
	catalog = AccessPackageCatalog(
		id = "66584aae-98bb-48cc-9458-7bee5d2a6577",
	),
)

result = await graph_client.identity_governance.entitlement_management.access_packages.post(request_body)


```