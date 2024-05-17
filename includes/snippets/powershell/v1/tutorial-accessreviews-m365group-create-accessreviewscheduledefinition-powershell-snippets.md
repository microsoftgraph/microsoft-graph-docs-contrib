---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "Guest access to marketing group"
	scope = @{
		"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
		query = "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')"
		queryType = "MicrosoftGraph"
	}
	instanceEnumerationScope = @{
		"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
		query = "/v1.0/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true"
		queryType = "MicrosoftGraph"
		queryRoot = $null
	}
	reviewers = @(
		@{
			query = "./owners"
			queryType = "MicrosoftGraph"
			queryRoot = $null
		}
	)
	fallbackReviewers = @(
		@{
			query = "/users/c9a5aff7-9298-4d71-adab-0a222e0a05e4"
			queryType = "MicrosoftGraph"
		}
	)
	settings = @{
		mailNotificationsEnabled = $true
		reminderNotificationsEnabled = $true
		justificationRequiredOnApproval = $true
		defaultDecisionEnabled = $true
		defaultDecision = "Deny"
		instanceDurationInDays = 3
		autoApplyDecisionsEnabled = $true
		recommendationsEnabled = $true
		recommendationLookBackDuration = "P30D"
		decisionHistoriesForReviewersEnabled = $false
		recurrence = @{
			pattern = @{
				type = "absoluteMonthly"
				interval = 3
				month = 0
				dayOfMonth = 0
				daysOfWeek = @(
				)
				firstDayOfWeek = "sunday"
				index = "first"
			}
			range = @{
				type = "endDate"
				numberOfOccurrences = 0
				recurrenceTimeZone = $null
				startDate = "2024-03-21"
				endDate = "2025-03-21"
			}
		}
		applyActions = @(
			@{
				"@odata.type" = "#microsoft.graph.removeAccessApplyAction"
			}
		)
	}
}

New-MgIdentityGovernanceAccessReviewDefinition -BodyParameter $params

```