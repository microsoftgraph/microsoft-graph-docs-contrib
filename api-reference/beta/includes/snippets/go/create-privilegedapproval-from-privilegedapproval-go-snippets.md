---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPrivilegedApproval()
userId := "userId-value"
requestBody.SetUserId(&userId)
roleId := "roleId-value"
requestBody.SetRoleId(&roleId)
approvalType := "approvalType-value"
requestBody.SetApprovalType(&approvalType)
approvalState := "approvalState-value"
requestBody.SetApprovalState(&approvalState)
approvalDuration := "datetime-value"
requestBody.SetApprovalDuration(&approvalDuration)
options := &msgraphsdk.PrivilegedApprovalRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.PrivilegedApproval().Post(options)


```