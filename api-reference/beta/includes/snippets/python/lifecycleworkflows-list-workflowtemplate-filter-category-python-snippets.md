---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = WorkflowTemplatesRequestBuilder.WorkflowTemplatesRequestBuilderGetQueryParameters(
		filter = "category eq 'leaver'",
)

request_configuration = WorkflowTemplatesRequestBuilder.WorkflowTemplatesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflow_templates.get(request_configuration = request_configuration)


```