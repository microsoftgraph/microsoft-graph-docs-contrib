---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Task()
request_body.description = 'Add user to selected groups'

request_body.display_name = 'Update marketing day 1 add users to Group set up'




result = await client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').tasks.by_task_id('task-id').patch(request_body = request_body)


```