---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.employee_experience.goals.export_jobs.export_jobs_request_builder import ExportJobsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ExportJobsRequestBuilder.ExportJobsRequestBuilderGetQueryParameters(
		filter = " goalsOrganizationId eq '3d9a8150-90fd-42bd-9777-25ba783d4a05'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.employee_experience.goals.export_jobs.get(request_configuration = request_configuration)


```