---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.employee_experience.goals.export_jobs.export_jobs_request_builder import ExportJobsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = ExportJobsRequestBuilder.ExportJobsRequestBuilderGetQueryParameters(
		filter = " goalsOrganizationId eq '3d9a8150-90fd-42bd-9777-25ba783d4a05'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.employee_experience.goals.export_jobs.get(request_configuration = request_configuration)


```