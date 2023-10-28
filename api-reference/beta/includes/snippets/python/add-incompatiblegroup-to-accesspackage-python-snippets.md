---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReferenceCreate(
	odata_id = "https://graph.microsoft.com/beta/groups/c0a74b4d-2694-4d5d-a964-1bee4ff0aaf2",
)

await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').incompatible_groups.ref.post(request_body)


```