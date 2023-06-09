---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ActivatePostRequestBody()
subjects_user1 = User()
subjects_user1.id = '8cdf25a8-c9d2-423e-a03d-3f39f03c3e97'


subjectsArray []= subjectsUser1;
subjects_user2 = User()
subjects_user2.id = 'ea09ac2e-77e3-4134-85f2-25ccf3c33387'


subjectsArray []= subjectsUser2;
request_body.subjects(subjectsArray)





await client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_activate.post(request_body = request_body)


```