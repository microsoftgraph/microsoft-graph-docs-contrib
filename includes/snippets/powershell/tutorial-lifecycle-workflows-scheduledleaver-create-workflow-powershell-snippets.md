---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	category = "leaver"
	displayName = "Post-Offboarding of an employee"
	description = "Configure offboarding tasks for employees after their last day of work"
	isEnabled = $true
	isSchedulingEnabled = $false
	executionConditions = @{
		"@odata.type" = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions"
		scope = @{
			"@odata.type" = "#microsoft.graph.identityGovernance.ruleBasedSubjectSet"
			rule = "department eq 'Marketing'"
		}
		trigger = @{
			"@odata.type" = "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger"
			timeBasedAttribute = "employeeLeaveDateTime"
			offsetInDays = 
		}
	}
	tasks = @(
		@{
			category = "leaver"
			continueOnError = $false
			description = "Remove all licenses assigned to the user"
			displayName = "Remove all licenses for user"
			executionSequence = 1
			isEnabled = $true
			taskDefinitionId = "8fa97d28-3e52-4985-b3a9-a1126f9b8b4e"
			arguments = @(
			)
		}
		@{
			category = "leaver"
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
			category = "leaver"
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