---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity_governance.lifecycle_workflows.workflows.item.user_processing_results.user_processing_results_request_builder import UserProcessingResultsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = UserProcessingResultsRequestBuilder.UserProcessingResultsRequestBuilderGetQueryParameters(
		select = ["id","failedTasksCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","workflowExecutionType","subject"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').user_processing_results.get(request_configuration = request_configuration)


```