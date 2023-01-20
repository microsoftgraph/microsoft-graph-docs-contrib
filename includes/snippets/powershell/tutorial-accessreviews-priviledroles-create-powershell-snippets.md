---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "Review access of users and groups to privileged roles"
	DescriptionForAdmins = "Review access of users and groups to privileged roles"
	Scope = @{
		"@odata.type" = "#microsoft.graph.principalResourceMembershipsScope"
		PrincipalScopes = @(
			@{
				"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
				Query = "/users"
				QueryType = "MicrosoftGraph"
			}
			@{
				"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
				Query = "/groups"
				QueryType = "MicrosoftGraph"
			}
		)
		ResourceScopes = @(
			@{
				"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
				Query = "/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1"
				QueryType = "MicrosoftGraph"
			}
		)
	}
	Reviewers = @(
		@{
			Query = "/users/f674a1c9-4a40-439c-bfa3-4b61a9f29d85"
			QueryType = "MicrosoftGraph"
		}
	)
	Settings = @{
		MailNotificationsEnabled = $true
		ReminderNotificationsEnabled = $true
		JustificationRequiredOnApproval = $true
		DefaultDecisionEnabled = $false
		DefaultDecision = "None"
		InstanceDurationInDays = 3
		RecommendationsEnabled = $false
		Recurrence = @{
			Pattern = @{
				Type = "absoluteMonthly"
				Interval = 3
			}
			Range = @{
				Type = "noEnd"
				StartDate = "2022-03-02"
			}
		}
	}
}

New-MgIdentityGovernanceAccessReviewDefinition -BodyParameter $params

```