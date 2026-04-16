---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	scope = @{
		"@odata.type" = "microsoft.graph.identityGovernance.activateProcessingResultScope"
		processingResults = @(
			@{
				id = "abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_638927021459371237_0cdd8963-aaaa-4632-a1f2-aaaa7230aaaa"
			}
			@{
				id = "abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_388131231459357126_aaaa8963-1c30-4632-aaaa-ac96723069cb"
			}
		)
		taskScope = "allTasks"
	}
}

Initialize-MgBetaIdentityGovernanceLifecycleWorkflowWithScope -WorkflowId $workflowId -BodyParameter $params

```