---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.employee_experience.goals.export_jobs.export_jobs_request_builder import ExportJobsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ExportJobsRequestBuilder.ExportJobsRequestBuilderGetQueryParameters(
		filter = " goalsOrganizationId eq '3d9a8150-90fd-42bd-9777-25ba783d4a05'",
)

request_configuration = ExportJobsRequestBuilder.ExportJobsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.employee_experience.goals.export_jobs.get(request_configuration = request_configuration)


```