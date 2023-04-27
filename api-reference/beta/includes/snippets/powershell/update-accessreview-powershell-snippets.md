---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "TestReview new name"
}

Update-MgAccessReview -AccessReviewId $accessReviewId -BodyParameter $params

```