---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.entitlement_management_settings import EntitlementManagementSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = EntitlementManagementSettings(
	external_user_lifecycle_action = AccessPackageExternalUserLifecycleAction.None,
)

result = await graph_client.identity_governance.entitlement_management.settings.patch(request_body)


```