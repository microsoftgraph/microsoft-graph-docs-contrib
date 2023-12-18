---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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