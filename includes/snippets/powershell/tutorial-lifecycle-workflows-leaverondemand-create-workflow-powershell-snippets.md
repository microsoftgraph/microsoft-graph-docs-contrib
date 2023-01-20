---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	Category = "Leaver"
	DisplayName = "Real-time employee termination"
	Description = "Execute real-time termination tasks for employees on their last day of work"
	IsEnabled = $true
	IsSchedulingEnabled = $false
	ExecutionConditions = @{
		"@odata.type" = "#microsoft.graph.identityGovernance.onDemandExecutionOnly"
	}
	Tasks = @(
		@{
			ContinueOnError = $false
			Description = "Remove user from all Azure AD groups memberships"
			DisplayName = "Remove user from all groups"
			ExecutionSequence = 1
			IsEnabled = $true
			TaskDefinitionId = "b3a31406-2a15-4c9a-b25b-a658fa5f07fc"
			Arguments = @(
			)
		}
		@{
			ContinueOnError = $false
			Description = "Remove user from all Teams memberships"
			DisplayName = "Remove user from all Teams"
			ExecutionSequence = 2
			IsEnabled = $true
			TaskDefinitionId = "81f7b200-2816-4b3b-8c5d-dc556f07b024"
			Arguments = @(
			)
		}
		@{
			ContinueOnError = $false
			Description = "Delete user account in Azure AD"
			DisplayName = "Delete User Account"
			ExecutionSequence = 3
			IsEnabled = $true
			TaskDefinitionId = "8d18588d-9ad3-4c0f-99d0-ec215f0e3dff"
			Arguments = @(
			)
		}
	)
}

New-MgIdentityGovernanceLifecycleWorkflow -BodyParameter $params

```