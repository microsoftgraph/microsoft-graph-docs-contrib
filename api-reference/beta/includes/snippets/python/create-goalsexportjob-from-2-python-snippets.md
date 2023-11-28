---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = GoalsExportJob(
	goals_organization_id = "String",
	explorer_view_id = "String",
)

result = await graph_client.employee_experience.goals.export_jobs.post(request_body)


```