---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ActivatePostRequestBody()
subjects_user1 = User()
subjects_user1.id = 'df744d9e-2148-4922-88a8-633896c1e929'


subjectsArray []= subjectsUser1;
request_body.subjects(subjectsArray)





await client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_activate.post(request_body = request_body)


```