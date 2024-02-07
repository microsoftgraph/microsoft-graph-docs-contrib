---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = EntitlementManagementSettings(
	external_user_lifecycle_action = "None",
)

result = await graph_client.identity_governance.entitlement_management.settings.patch(request_body)


```