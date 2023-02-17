---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "Onboard pre-hire employee"
	Description = "Configure pre-hire tasks for onboarding employees before their first day"
	IsEnabled = $true
	IsSchedulingEnabled = $false
	ExecutionConditions = @{
		"@odata.type" = "microsoft.graph.identityGovernance.triggerAndScopeBasedConditions"
		Scope = @{
			"@odata.type" = "microsoft.graph.identityGovernance.ruleBasedSubjectSet"
			Rule = "(department eq 'Sales')"
		}
		Trigger = @{
			"@odata.type" = "microsoft.graph.identityGovernance.timeBasedAttributeTrigger"
			TimeBasedAttribute = "employeeHireDate"
			OffsetInDays = 
		}
	}
	Tasks = @(
		@{
			IsEnabled = $true
			Category = "Joiner"
			TaskDefinitionId = "1b555e50-7f65-41d5-b514-5894a026d10d"
			DisplayName = "Generate TAP And Send Email"
			Description = "Generate Temporary Access Pass and send via email to user's manager"
			Arguments = @(
				@{
					Name = "tapLifetimeMinutes"
					Value = "480"
				}
				@{
					Name = "tapIsUsableOnce"
					Value = "true"
				}
			)
		}
	)
}

New-MgIdentityGovernanceLifecycleWorkflow -BodyParameter $params

```