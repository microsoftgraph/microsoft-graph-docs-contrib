---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	category = "Leaver"
	displayName = "Real-time employee termination"
	description = "Execute real-time termination tasks for employees on their last day of work"
	isEnabled = $true
	isSchedulingEnabled = $false
	executionConditions = @{
		"@odata.type" = "#microsoft.graph.identityGovernance.onDemandExecutionOnly"
	}
	tasks = @(
		@{
			continueOnError = $false
			description = "Remove user from all Azure AD groups memberships"
			displayName = "Remove user from all groups"
			executionSequence = 1
			isEnabled = $true
			taskDefinitionId = "b3a31406-2a15-4c9a-b25b-a658fa5f07fc"
			arguments = @(
			)
		}
		@{
			continueOnError = $false
			description = "Remove user from all Teams memberships"
			displayName = "Remove user from all Teams"
			executionSequence = 2
			isEnabled = $true
			taskDefinitionId = "81f7b200-2816-4b3b-8c5d-dc556f07b024"
			arguments = @(
			)
		}
		@{
			continueOnError = $false
			description = "Delete user account in Azure AD"
			displayName = "Delete User Account"
			executionSequence = 3
			isEnabled = $true
			taskDefinitionId = "8d18588d-9ad3-4c0f-99d0-ec215f0e3dff"
			arguments = @(
			)
		}
	)
}

New-MgIdentityGovernanceLifecycleWorkflow -BodyParameter $params

```