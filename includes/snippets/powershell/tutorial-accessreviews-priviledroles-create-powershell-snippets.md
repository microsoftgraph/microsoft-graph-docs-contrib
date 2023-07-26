---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "Review access of users and groups to privileged roles"
	descriptionForAdmins = "Review access of users and groups to privileged roles"
	scope = @{
		"@odata.type" = "#microsoft.graph.principalResourceMembershipsScope"
		principalScopes = @(
			@{
				"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
				query = "/users"
				queryType = "MicrosoftGraph"
			}
			@{
				"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
				query = "/groups"
				queryType = "MicrosoftGraph"
			}
		)
		resourceScopes = @(
			@{
				"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
				query = "/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1"
				queryType = "MicrosoftGraph"
			}
		)
	}
	reviewers = @(
		@{
			query = "/users/f674a1c9-4a40-439c-bfa3-4b61a9f29d85"
			queryType = "MicrosoftGraph"
		}
	)
	settings = @{
		mailNotificationsEnabled = $true
		reminderNotificationsEnabled = $true
		justificationRequiredOnApproval = $true
		defaultDecisionEnabled = $false
		defaultDecision = "None"
		instanceDurationInDays = 3
		recommendationsEnabled = $false
		recurrence = @{
			pattern = @{
				type = "absoluteMonthly"
				interval = 3
			}
			range = @{
				type = "noEnd"
				startDate = "2022-03-02"
			}
		}
	}
}

New-MgIdentityGovernanceAccessReviewDefinition -BodyParameter $params

```