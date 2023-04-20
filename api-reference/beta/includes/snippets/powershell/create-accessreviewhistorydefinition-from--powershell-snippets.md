---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "Last quarter's group reviews April 2021"
	Decisions = @(
		"approve"
		"deny"
		"dontKnow"
		"notReviewed"
		"notNotified"
	)
	ReviewHistoryPeriodStartDateTime = [System.DateTime]::Parse("2021-01-01T00:00:00Z")
	ReviewHistoryPeriodEndDateTime = [System.DateTime]::Parse("2021-04-30T23:59:59Z")
	Scopes = @(
		@{
			"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
			QueryType = "MicrosoftGraph"
			Query = "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')"
			QueryRoot = $null
		}
		@{
			"@odata.type" = "#microsoft.graph.accessReviewQueryScope"
			QueryType = "MicrosoftGraph"
			Query = "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')"
			QueryRoot = $null
		}
	)
}

New-MgIdentityGovernanceAccessReviewHistoryDefinition -BodyParameter $params

```