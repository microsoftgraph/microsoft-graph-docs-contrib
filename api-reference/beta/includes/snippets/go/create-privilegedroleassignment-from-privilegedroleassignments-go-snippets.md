---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewPrivilegedRoleAssignment()
userId := "userId-value"
requestBody.SetUserId(&userId) 
roleId := "roleId-value"
requestBody.SetRoleId(&roleId) 

result, err := graphClient.PrivilegedRoleAssignments().Post(context.Background(), requestBody, nil)


```