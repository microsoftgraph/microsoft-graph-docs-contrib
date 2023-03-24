---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewApprovalStage()
reviewResult := "Approve"
requestBody.SetReviewResult(&reviewResult) 
justification := "OK"
requestBody.SetJustification(&justification) 

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentApprovalsById("approval-id").StagesById("approvalStage-id").Patch(context.Background(), requestBody, nil)


```