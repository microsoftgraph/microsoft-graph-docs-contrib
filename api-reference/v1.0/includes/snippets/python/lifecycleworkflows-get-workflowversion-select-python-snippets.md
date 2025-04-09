---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.lifecycle_workflows.workflows.item.versions.{workflow_version-version_number}.workflow_version_item_request_builder import WorkflowVersionItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = WorkflowVersionItemRequestBuilder.WorkflowVersionItemRequestBuilderGetQueryParameters(
		select = ["category","displayName","versionNumber","executionConditions"],
		expand = ["tasks"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').versions.by_workflow_version_version_number('workflowVersion-versionNumber').get(request_configuration = request_configuration)


```