---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPrivilegedApproval()
approvalState := graphmodels.APPROVALSTATE-VALUE_APPROVALSTATE 
requestBody.SetApprovalState(&approvalState) 
approverReason := "approverReason-value"
requestBody.SetApproverReason(&approverReason) 

graphClient.PrivilegedApprovalById("privilegedApproval-id").Patch(requestBody)


```