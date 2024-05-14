---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identitygovernance.rolemanagementalerts.alerts.refresh.refresh_post_request_body import RefreshPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = RefreshPostRequestBody(
	scope_id = "/",
	scope_type = "DirectoryRole",
)

await graph_client.identity_governance.role_management_alerts.alerts.refresh.post(request_body)


```