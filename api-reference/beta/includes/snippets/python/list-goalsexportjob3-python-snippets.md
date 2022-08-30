---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.employee_experience.goals.export_jobs.export_jobs_request_builder import ExportJobsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = ExportJobsRequestBuilder.ExportJobsRequestBuilderGetQueryParameters(
		filter = " explorerViewId eq ‘9ab0fcab-c1d4-4b26-963b-a3c33155f853’",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.employee_experience.goals.export_jobs.get(request_configuration = request_configuration)


```