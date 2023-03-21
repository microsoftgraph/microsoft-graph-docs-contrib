---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


result, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequestsById("unifiedRoleAssignmentScheduleRequest-id").Get(context.Background(), nil)


```