---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewApprovalStage()
reviewResult := "Approve"
requestBody.SetReviewResult(&reviewResult)
justification := "OK"
requestBody.SetJustification(&justification)
options := &msgraphsdk.ApprovalStageRequestBuilderPatchOptions{
	Body: requestBody,
}
approvalId := "approval-id"
approvalStageId := "approvalStage-id"
graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentApprovalsById(&approvalId).StagesById(&approvalStageId).Patch(options)


```