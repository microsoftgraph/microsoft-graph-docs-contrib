---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "Group owners review guest across Microsoft 365 groups in the tenant (Quarterly)"
	DescriptionForAdmins = ""
	DescriptionForReviewers = ""
	Scope = @{
		Query = "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')"
		QueryType = "MicrosoftGraph"
	}
	InstanceEnumerationScope = @{
		Query = "/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true"
		QueryType = "MicrosoftGraph"
	}
	Reviewers = @(
		@{
			Query = "./owners"
			QueryType = "MicrosoftGraph"
			QueryRoot = $null
		}
	)
	FallbackReviewers = @(
		@{
			Query = "/users/c9a5aff7-9298-4d71-adab-0a222e0a05e4"
			QueryType = "MicrosoftGraph"
			QueryRoot = $null
		}
	)
	Settings = @{
		MailNotificationsEnabled = $true
		ReminderNotificationsEnabled = $true
		JustificationRequiredOnApproval = $true
		DefaultDecisionEnabled = $true
		DefaultDecision = "Approve"
		InstanceDurationInDays = 0
		AutoApplyDecisionsEnabled = $true
		RecommendationsEnabled = $true
		Recurrence = @{
			Pattern = @{
				Type = "absoluteMonthly"
				Interval = 3
				Month = 0
				DayOfMonth = 0
				DaysOfWeek = @(
				)
				FirstDayOfWeek = "sunday"
				Index = "first"
			}
			Range = @{
				Type = "numbered"
				NumberOfOccurrences = 0
				RecurrenceTimeZone = $null
				StartDate = "2021-02-10"
				EndDate = "2022-12-21"
			}
		}
		ApplyActions = @(
			@{
				"@odata.type" = "#microsoft.graph.removeAccessApplyAction"
			}
		)
	}
}

New-MgIdentityGovernanceAccessReviewDefinition -BodyParameter $params

```