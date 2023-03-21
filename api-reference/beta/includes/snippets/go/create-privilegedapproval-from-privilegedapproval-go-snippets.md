---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewPrivilegedApproval()
userId := "userId-value"
requestBody.SetUserId(&userId) 
roleId := "roleId-value"
requestBody.SetRoleId(&roleId) 
approvalType := "approvalType-value"
requestBody.SetApprovalType(&approvalType) 
approvalState := graphmodels.APPROVALSTATE-VALUE_APPROVALSTATE 
requestBody.SetApprovalState(&approvalState) 
approvalDuration , err := abstractions.ParseISODuration("datetime-value")
requestBody.SetApprovalDuration(&approvalDuration) 

result, err := graphClient.PrivilegedApproval().Post(context.Background(), requestBody, nil)


```