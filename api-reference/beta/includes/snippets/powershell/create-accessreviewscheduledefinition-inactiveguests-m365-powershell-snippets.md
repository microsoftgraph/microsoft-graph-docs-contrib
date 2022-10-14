---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "Review inactive guests on teams"
	DescriptionForAdmins = "Control guest user access to our teams."
	DescriptionForReviewers = "Information security is everyone's responsibility. Review our access policy for more."
	InstanceEnumerationScope = @{
		"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
		Query = "/groups?$filter=(groupTypes/any(c:c+eq+'Unified') and resourceProvisioningOptions/Any(x:x eq 'Team')')"
		QueryType = "MicrosoftGraph"
	}
	Scope = @{
		"@odata.type" = "#microsoft.graph.accessReviewInactiveUsersQueryScope"
		Query = "./members/microsoft.graph.user/?$filter=(userType eq 'Guest')"
		QueryType = "MicrosoftGraph"
		InactiveDuration = "P30D"
	}
	Reviewers = @(
		@{
			Query = "./owners"
			QueryType = "MicrosoftGraph"
		}
	)
	FallbackReviewers = @(
		@{
			Query = "/users/fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f"
			QueryType = "MicrosoftGraph"
		}
	)
	Settings = @{
		MailNotificationsEnabled = $true
		ReminderNotificationsEnabled = $true
		JustificationRequiredOnApproval = $true
		RecommendationsEnabled = $true
		InstanceDurationInDays = 3
		Recurrence = @{
			Pattern = @{
				Type = "absoluteMonthly"
				DayOfMonth = 5
				Interval = 3
			}
			Range = @{
				Type = "noEnd"
				StartDate = "2020-05-04T00:00:00.000Z"
			}
		}
		DefaultDecisionEnabled = $true
		DefaultDecision = "Deny"
		AutoApplyDecisionsEnabled = $true
	}
}

New-MgIdentityGovernanceAccessReviewDefinition -BodyParameter $params

```