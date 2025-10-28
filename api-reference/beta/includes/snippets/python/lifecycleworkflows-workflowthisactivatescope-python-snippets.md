---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.lifecycleworkflows.workflows.item.microsoft_graph_identity_governance_activate_with_scope.activate_with_scope_post_request_body import ActivateWithScopePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ActivateWithScopePostRequestBody(
	additional_data = {
			"subjects" : [
				{
						"id" : "8cdf25a8-c9d2-423e-a03d-3f39f03c3e97",
				},
				{
						"id" : "ea09ac2e-77e3-4134-85f2-25ccf3c33387",
				},
			],
	}
)

await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_activate_with_scope.post(request_body)


```