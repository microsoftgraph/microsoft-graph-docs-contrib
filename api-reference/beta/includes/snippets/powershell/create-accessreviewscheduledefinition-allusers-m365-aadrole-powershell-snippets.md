---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "Review employee access to LinkedIn"
	DescriptionForAdmins = "Review employee access to LinkedIn"
	Scope = @{
		"@odata.type" = "#microsoft.graph.principalResourceMembershipsScope"
		PrincipalScopes = @(
			@{
				"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
				Query = "/users"
				QueryType = "MicrosoftGraph"
			}
		)
		ResourceScopes = @(
			@{
				"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
				Query = "/servicePrincipals/bae11f90-7d5d-46ba-9f55-8112b59d92ae"
				QueryType = "MicrosoftGraph"
			}
		)
	}
	Reviewers = @(
		@{
			Query = "./manager"
			QueryType = "MicrosoftGraph"
			QueryRoot = "decisions"
		}
	)
	BackupReviewers = @(
		@{
			Query = "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers"
			QueryType = "MicrosoftGraph"
		}
	)
	FallbackReviewers = @(
		@{
			Query = "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers"
			QueryType = "MicrosoftGraph"
		}
	)
	Settings = @{
		MailNotificationsEnabled = $true
		ReminderNotificationsEnabled = $true
		JustificationRequiredOnApproval = $true
		DefaultDecisionEnabled = $true
		DefaultDecision = "Recommendation"
		InstanceDurationInDays = 180
		AutoApplyDecisionsEnabled = $true
		RecommendationsEnabled = $true
		Recurrence = @{
			Pattern = @{
				Type = "absoluteMonthly"
				Interval = 6
				DayOfMonth = 0
			}
			Range = @{
				Type = "numbered"
				StartDate = "2021-05-05"
				EndDate = "2022-05-05"
			}
		}
	}
}

New-MgIdentityGovernanceAccessReviewDefinition -BodyParameter $params

```