---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity_governance.lifecycle_workflows.deleted_items.workflows.item.workflow_item_request_builder import WorkflowItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = WorkflowItemRequestBuilder.WorkflowItemRequestBuilderGetQueryParameters(
		select = ["id","category","displayName","description","version","executionConditions"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.deleted_items.workflows.by_workflow_id('workflow-id').get(request_configuration = request_configuration)


```