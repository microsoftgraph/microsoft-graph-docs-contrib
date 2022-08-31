---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "TestReview new name"
}

Update-MgAccessReview -AccessReviewId $accessReviewId -BodyParameter $params

```