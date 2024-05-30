---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	workflow = @{
		category = "joiner"
		description = "Configure new hire tasks for onboarding employees on their first day"
		displayName = "Global onboard new hire employee"
		isEnabled = $true
		isSchedulingEnabled = $false
		executionConditions = @{
			"@odata.type" = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions"
			scope = @{
				"@odata.type" = "#microsoft.graph.identityGovernance.ruleBasedSubjectSet"
				rule = "(department eq 'Marketing')"
			}
			trigger = @{
				"@odata.type" = "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger"
				timeBasedAttribute = "employeeHireDate"
				offsetInDays = 
			}
		}
		tasks = @(
			@{
				continueOnError = $false
				description = "Enable user account in the directory"
				displayName = "Enable User Account"
				isEnabled = $true
				taskDefinitionId = "6fc52c9d-398b-4305-9763-15f42c1676fc"
				arguments = @(
				)
			}
			@{
				continueOnError = $false
				description = "Send welcome email to new hire"
				displayName = "Send Welcome Email"
				isEnabled = $true
				taskDefinitionId = "70b29d51-b59a-4773-9280-8841dfd3f2ea"
				arguments = @(
				)
			}
		)
	}
}

New-MgBetaIdentityGovernanceLifecycleWorkflowNewVersion -WorkflowId $workflowId -BodyParameter $params

```