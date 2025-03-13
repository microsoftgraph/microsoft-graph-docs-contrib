---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "One-time self-review for members of Building security"
	descriptionForAdmins = "One-time self-review for members of Building security"
	descriptionForReviewers = "One-time self-review for members of Building security"
	scope = @{
		query = "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4/transitiveMembers"
		queryType = "MicrosoftGraph"
	}
	instanceEnumerationScope = @{
		query = "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4"
		queryType = "MicrosoftGraph"
	}
	settings = @{
		mailNotificationsEnabled = $true
		reminderNotificationsEnabled = $true
		justificationRequiredOnApproval = $true
		defaultDecisionEnabled = $true
		defaultDecision = "Deny"
		instanceDurationInDays = 5
		autoApplyDecisionsEnabled = $true
		recommendationsEnabled = $true
		recurrence = @{
			pattern = $null
			range = @{
				type = "numbered"
				numberOfOccurrences = 0
				recurrenceTimeZone = $null
				startDate = "2024-03-21"
				endDate = "2024-03-30"
			}
		}
	}
}

New-MgIdentityGovernanceAccessReviewDefinition -BodyParameter $params

```