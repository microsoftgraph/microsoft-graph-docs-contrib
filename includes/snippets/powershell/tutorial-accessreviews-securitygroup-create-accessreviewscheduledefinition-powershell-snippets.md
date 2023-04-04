---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "One-time self-review for members of Building security"
	DescriptionForAdmins = "One-time self-review for members of Building security"
	DescriptionForReviewers = "One-time self-review for members of Building security"
	Scope = @{
		Query = "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4/transitiveMembers"
		QueryType = "MicrosoftGraph"
	}
	InstanceEnumerationScope = @{
		Query = "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4"
		QueryType = "MicrosoftGraph"
	}
	Settings = @{
		MailNotificationsEnabled = $true
		ReminderNotificationsEnabled = $true
		JustificationRequiredOnApproval = $true
		DefaultDecisionEnabled = $true
		DefaultDecision = "Deny"
		InstanceDurationInDays = 5
		AutoApplyDecisionsEnabled = $true
		RecommendationsEnabled = $true
		Recurrence = @{
			Pattern = $null
			Range = @{
				Type = "numbered"
				NumberOfOccurrences = 0
				RecurrenceTimeZone = $null
				StartDate = "2022-02-11"
				EndDate = "2022-02-16"
			}
		}
	}
}

New-MgIdentityGovernanceAccessReviewDefinition -BodyParameter $params

```