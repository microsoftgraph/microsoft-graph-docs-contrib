---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	decision = "Approve"
	justification = "All principals with access need continued access to the resource (Marketing Group) as all the principals are on the marketing team"
	resourceId = "a5c51e59-3fcd-4a37-87a1-835c0c21488a"
}

# A UPN can also be used as -UserId.
Invoke-MgBatchUserPendingAccessReviewInstanceRecordDecision -UserId $userId -AccessReviewInstanceId $accessReviewInstanceId -BodyParameter $params

```