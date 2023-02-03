---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "Group Multi-stage Access Review"
	DescriptionForAdmins = "New scheduled access review"
	DescriptionForReviewers = "If you have any questions, contact jerry@contoso.com"
	Scope = @{
		"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
		Query = "/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers"
		QueryType = "MicrosoftGraph"
	}
	StageSettings = @(
		@{
			StageId = "1"
			DurationInDays = 2
			RecommendationsEnabled = $false
			DecisionsThatWillMoveToNextStage = @(
				"NotReviewed"
				"Approve"
			)
			Reviewers = @(
				@{
					Query = "/users/398164b1-5196-49dd-ada2-364b49f99b27"
					QueryType = "MicrosoftGraph"
				}
			)
		}
		@{
			StageId = "2"
			DependsOn = @(
				"1"
			)
			DurationInDays = 2
			RecommendationsEnabled = $true
			Reviewers = @(
				@{
					Query = "./manager"
					QueryType = "MicrosoftGraph"
					QueryRoot = "decisions"
				}
			)
			FallbackReviewers = @(
				@{
					Query = "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers"
					QueryType = "MicrosoftGraph"
				}
			)
		}
	)
	Settings = @{
		InstanceDurationInDays = 4
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
		DecisionHistoriesForReviewersEnabled = $true
	}
}

New-MgIdentityGovernanceAccessReviewDefinition -BodyParameter $params

```