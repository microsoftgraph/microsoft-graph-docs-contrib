---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.rolemanagementalerts.alerts.refresh.refresh_post_request_body import RefreshPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RefreshPostRequestBody(
	scope_id = "/",
	scope_type = "DirectoryRole",
)

await graph_client.identity_governance.role_management_alerts.alerts.refresh.post(request_body)


```