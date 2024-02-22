---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.activate_post_request_body import ActivatePostRequestBody
from msgraph.generated.models.user import User

graph_client = GraphServiceClient(credentials, scopes)

request_body = ActivatePostRequestBody(
	subjects = [
		User(
			id = "df744d9e-2148-4922-88a8-633896c1e929",
		),
	],
)

await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_activate.post(request_body)


```