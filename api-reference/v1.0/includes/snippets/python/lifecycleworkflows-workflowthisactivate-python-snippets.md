---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identitygovernance.lifecycleworkflows.workflows.item.microsoft_graph_identity_governance_activate.activate_post_request_body import ActivatePostRequestBody
from msgraph.generated.models.user import User

graph_client = GraphServiceClient(credentials, scopes)

request_body = ActivatePostRequestBody(
	subjects = [
		User(
			id = "8cdf25a8-c9d2-423e-a03d-3f39f03c3e97",
		),
		User(
			id = "ea09ac2e-77e3-4134-85f2-25ccf3c33387",
		),
	],
)

await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_activate.post(request_body)


```