---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	displayName = "TestReview new name"
}

Update-MgBetaAccessReview -AccessReviewId $accessReviewId -BodyParameter $params

```