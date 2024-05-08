---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.employee_experience.goals.export_jobs.export_jobs_request_builder import ExportJobsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ExportJobsRequestBuilder.ExportJobsRequestBuilderGetQueryParameters(
		filter = " explorerViewId eq ‘9ab0fcab-c1d4-4b26-963b-a3c33155f853’",
)

request_configuration = ExportJobsRequestBuilder.ExportJobsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.employee_experience.goals.export_jobs.get(request_configuration = request_configuration)


```