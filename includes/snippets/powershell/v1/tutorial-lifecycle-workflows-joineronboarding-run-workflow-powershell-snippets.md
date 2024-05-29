---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	subjects = @(
		@{
			id = "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
		}
	)
}

Initialize-MgIdentityGovernanceLifecycleWorkflow -WorkflowId $workflowId -BodyParameter $params

```