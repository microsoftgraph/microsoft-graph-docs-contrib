---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EntitlementManagementSettings(
	external_user_lifecycle_action = "None",
)

result = await graph_client.identity_governance.entitlement_management.settings.patch(request_body)


```