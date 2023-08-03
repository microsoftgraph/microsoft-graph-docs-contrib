---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ActivatePostRequestBody()
subjects_user1 = User()
subjects_user1.id = '8930f0c7-cdd7-4885-9260-3b4a8111de5c'


subjectsArray []= subjectsUser1;
request_body.subjects(subjectsArray)





await client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_activate.post(request_body = request_body)


```