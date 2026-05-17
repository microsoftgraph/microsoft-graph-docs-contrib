---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identitygovernance.lifecycleworkflows.workflows.item.microsoft_graph_identity_governance_activate_with_scope.activate_with_scope_post_request_body import ActivateWithScopePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ActivateWithScopePostRequestBody(
	additional_data = {
			"subjects" : [
				{
						"id" : "2ea4c363-4b85-4529-b2ec-53b64308f39f",
				},
				{
						"id" : "44fc5392-9485-4348-871e-2ea17cc0a1b8",
				},
			],
	}
)

await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_activate_with_scope.post(request_body)


```