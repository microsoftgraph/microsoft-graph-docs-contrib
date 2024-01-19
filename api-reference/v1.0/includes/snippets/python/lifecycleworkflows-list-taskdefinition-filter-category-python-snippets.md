---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = TaskDefinitionsRequestBuilder.TaskDefinitionsRequestBuilderGetQueryParameters(
		filter = "category has 'joiner'",
)

request_configuration = TaskDefinitionsRequestBuilder.TaskDefinitionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.task_definitions.get(request_configuration = request_configuration)


```