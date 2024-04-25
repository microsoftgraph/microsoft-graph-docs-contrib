---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.goals_export_job import GoalsExportJob

graph_client = GraphServiceClient(credentials, scopes)

request_body = GoalsExportJob(
	goals_organization_id = "String",
	explorer_view_id = "String",
)

result = await graph_client.employee_experience.goals.export_jobs.post(request_body)


```