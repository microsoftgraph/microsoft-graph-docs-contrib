---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.entitlement_management_settings import EntitlementManagementSettings
from msgraph.generated.models.access_package_external_user_lifecycle_action import AccessPackageExternalUserLifecycleAction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EntitlementManagementSettings(
	external_user_lifecycle_action = AccessPackageExternalUserLifecycleAction.None,
)

result = await graph_client.identity_governance.entitlement_management.settings.patch(request_body)


```