---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.goals_export_job import GoalsExportJob
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GoalsExportJob(
	goals_organization_id = "String",
	explorer_view_id = "String",
)

result = await graph_client.employee_experience.goals.export_jobs.post(request_body)


```