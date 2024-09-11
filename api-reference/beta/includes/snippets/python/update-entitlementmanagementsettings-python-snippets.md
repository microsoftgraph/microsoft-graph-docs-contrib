---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.entitlement_management_settings import EntitlementManagementSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EntitlementManagementSettings(
	external_user_lifecycle_action = "None",
)

result = await graph_client.identity_governance.entitlement_management.settings.patch(request_body)


```