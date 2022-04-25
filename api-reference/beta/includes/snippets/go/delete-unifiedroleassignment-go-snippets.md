---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

unifiedRoleAssignmentId := "unifiedRoleAssignment-id"
graphClient.RoleManagement().Directory().RoleAssignmentsById(&unifiedRoleAssignmentId).Delete(nil)


```