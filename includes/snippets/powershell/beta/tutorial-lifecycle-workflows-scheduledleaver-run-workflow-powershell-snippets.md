---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	subjects = @(
		@{
			id = "df744d9e-2148-4922-88a8-633896c1e929"
		}
	)
}

Initialize-MgBetaIdentityGovernanceLifecycleWorkflow -WorkflowId $workflowId -BodyParameter $params

```