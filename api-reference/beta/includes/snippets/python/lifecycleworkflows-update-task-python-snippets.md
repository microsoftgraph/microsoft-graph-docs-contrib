---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.task import Task

graph_client = GraphServiceClient(credentials, scopes)

request_body = Task(
	description = "Add user to selected groups",
	display_name = "Update marketing day 1 add users to Group set up",
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').tasks.by_task_id('task-id').patch(request_body)


```