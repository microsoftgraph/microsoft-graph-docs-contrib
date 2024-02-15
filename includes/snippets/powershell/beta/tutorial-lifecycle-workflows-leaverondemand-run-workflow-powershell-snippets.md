---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	subjects = @(
		@{
			id = "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
		}
	)
}

Initialize-MgBetaIdentityGovernanceLifecycleWorkflow -WorkflowId $workflowId -BodyParameter $params

```