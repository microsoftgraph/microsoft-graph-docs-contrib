---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = TaskDefinitionsRequestBuilder.TaskDefinitionsRequestBuilderGetQueryParameters(
		filter = "category has 'joiner'",
)

request_configuration = TaskDefinitionsRequestBuilder.TaskDefinitionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.task_definitions.get(request_configuration = request_configuration)


```