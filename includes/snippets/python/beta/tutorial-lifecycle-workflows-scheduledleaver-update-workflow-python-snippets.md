---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workflow import Workflow

graph_client = GraphServiceClient(credentials, scopes)

request_body = Workflow(
	is_enabled = True,
	is_scheduling_enabled = True,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').patch(request_body)


```