---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewUnifiedRoleAssignmentMultiple()
displayName := "NewName"
requestBody.SetDisplayName(&displayName) 
description := "A new roleAssignment"
requestBody.SetDescription(&description) 

result, err := graphClient.RoleManagement().CloudPC().RoleAssignmentsById("unifiedRoleAssignmentMultiple-id").Patch(context.Background(), requestBody, nil)


```