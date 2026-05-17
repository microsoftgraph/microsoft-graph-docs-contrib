---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identitygovernance.lifecycleworkflows.workflows.item.microsoft_graph_identity_governance_activate_with_scope.activate_with_scope_post_request_body import ActivateWithScopePostRequestBody
from msgraph.generated.models.identity_governance.activate_processing_result_scope import ActivateProcessingResultScope
from msgraph.generated.models.identity_governance.user_processing_result import UserProcessingResult
from msgraph.generated.models.activation_task_scope_type import ActivationTaskScopeType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ActivateWithScopePostRequestBody(
	scope = ActivateProcessingResultScope(
		odata_type = "microsoft.graph.identityGovernance.activateProcessingResultScope",
		processing_results = [
			UserProcessingResult(
				id = "abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_638927021459371237_0cdd8963-aaaa-4632-a1f2-aaaa7230aaaa",
			),
			UserProcessingResult(
				id = "abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_388131231459357126_aaaa8963-1c30-4632-aaaa-ac96723069cb",
			),
		],
		task_scope = ActivationTaskScopeType.AllTasks,
	),
)

await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_activate_with_scope.post(request_body)


```