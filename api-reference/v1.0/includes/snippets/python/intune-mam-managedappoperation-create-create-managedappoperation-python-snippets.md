---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.managed_app_operation import ManagedAppOperation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ManagedAppOperation(
	odata_type = "#microsoft.graph.managedAppOperation",
	display_name = "Display Name value",
	state = "State value",
	version = "Version value",
)

result = await graph_client.device_app_management.managed_app_registrations.by_managed_app_registration_id('managedAppRegistration-id').operations.post(request_body)


```