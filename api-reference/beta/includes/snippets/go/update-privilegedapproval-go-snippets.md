---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPrivilegedApproval()
approvalState := "approvalState-value"
requestBody.SetApprovalState(&approvalState)
approverReason := "approverReason-value"
requestBody.SetApproverReason(&approverReason)
privilegedApprovalId := "privilegedApproval-id"
graphClient.PrivilegedApprovalById(&privilegedApprovalId).Patch(requestBody)


```