---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPrivilegedRoleAssignment()
userId := "userId-value"
requestBody.SetUserId(&userId)
roleId := "roleId-value"
requestBody.SetRoleId(&roleId)
options := &msgraphsdk.PrivilegedRoleAssignmentsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.PrivilegedRoleAssignments().Post(options)


```