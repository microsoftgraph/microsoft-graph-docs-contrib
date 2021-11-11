---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

unifiedRoleAssignmentScheduleInstanceId := "unifiedRoleAssignmentScheduleInstance-id"
result, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleInstancesById(&unifiedRoleAssignmentScheduleInstanceId).Get(options)


```