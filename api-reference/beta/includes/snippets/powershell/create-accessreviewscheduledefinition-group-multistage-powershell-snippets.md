---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "Group Multi-stage Access Review"
	descriptionForAdmins = "New scheduled access review"
	descriptionForReviewers = "If you have any questions, contact jerry@contoso.com"
	scope = @{
		"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
		query = "/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers"
		queryType = "MicrosoftGraph"
	}
	stageSettings = @(
		@{
			stageId = "1"
			durationInDays = 2
			recommendationsEnabled = $false
			decisionsThatWillMoveToNextStage = @(
				"NotReviewed"
				"Approve"
			)
			reviewers = @(
				@{
					query = "/users/398164b1-5196-49dd-ada2-364b49f99b27"
					queryType = "MicrosoftGraph"
				}
			)
		}
		@{
			stageId = "2"
			dependsOn = @(
				"1"
			)
			durationInDays = 2
			recommendationsEnabled = $true
			reviewers = @(
				@{
					query = "./manager"
					queryType = "MicrosoftGraph"
					queryRoot = "decisions"
				}
			)
			fallbackReviewers = @(
				@{
					query = "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers"
					queryType = "MicrosoftGraph"
				}
			)
		}
	)
	settings = @{
		instanceDurationInDays = 4
		recurrence = @{
			pattern = @{
				type = "weekly"
				interval = 1
			}
			range = @{
				type = "noEnd"
				startDate = "2020-09-08T12:02:30.667Z"
			}
		}
		decisionHistoriesForReviewersEnabled = $true
	}
}

New-MgIdentityGovernanceAccessReviewDefinition -BodyParameter $params

```