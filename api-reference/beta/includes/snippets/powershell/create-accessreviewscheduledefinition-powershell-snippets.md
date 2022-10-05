---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "Test create"
	DescriptionForAdmins = "New scheduled access review"
	DescriptionForReviewers = "If you have any questions, contact jerry@contoso.com"
	Scope = @{
		"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
		Query = "/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers"
		QueryType = "MicrosoftGraph"
	}
	Reviewers = @(
		@{
			Query = "/users/398164b1-5196-49dd-ada2-364b49f99b27"
			QueryType = "MicrosoftGraph"
		}
	)
	Settings = @{
		MailNotificationsEnabled = $true
		ReminderNotificationsEnabled = $true
		JustificationRequiredOnApproval = $true
		DefaultDecisionEnabled = $false
		DefaultDecision = "None"
		InstanceDurationInDays = 1
		RecommendationsEnabled = $true
		Recurrence = @{
			Pattern = @{
				Type = "weekly"
				Interval = 1
			}
			Range = @{
				Type = "noEnd"
				StartDate = "2020-09-08T12:02:30.667Z"
			}
		}
	}
}

New-MgIdentityGovernanceAccessReviewDefinition -BodyParameter $params

```