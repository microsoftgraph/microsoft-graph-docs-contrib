---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	subjects = @(
		@{
			id = "2ea4c363-4b85-4529-b2ec-53b64308f39f"
		}
		@{
			id = "44fc5392-9485-4348-871e-2ea17cc0a1b8"
		}
	)
}

Initialize-MgIdentityGovernanceLifecycleWorkflowWithScope -WorkflowId $workflowId -BodyParameter $params

```