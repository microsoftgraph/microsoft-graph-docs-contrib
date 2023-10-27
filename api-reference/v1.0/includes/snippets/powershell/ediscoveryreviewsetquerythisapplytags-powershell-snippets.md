---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	tagsToAdd = @(
		@{
			id = "d3d99dc704a74801b792b3e1e722aa0d"
		}
	)
}

Add-MgSecurityCaseEdiscoveryCaseReviewSetQueryTag -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewSetId $ediscoveryReviewSetId -EdiscoveryReviewSetQueryId $ediscoveryReviewSetQueryId -BodyParameter $params

```