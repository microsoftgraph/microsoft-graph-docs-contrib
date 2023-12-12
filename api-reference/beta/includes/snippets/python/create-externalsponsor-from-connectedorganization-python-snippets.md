---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReferenceCreate(
	odata_id = "https://graph.microsoft.com/beta/users/{id}",
)

await graph_client.identity_governance.entitlement_management.connected_organizations.by_connected_organization_id('connectedOrganization-id').external_sponsors.ref.post(request_body)


```