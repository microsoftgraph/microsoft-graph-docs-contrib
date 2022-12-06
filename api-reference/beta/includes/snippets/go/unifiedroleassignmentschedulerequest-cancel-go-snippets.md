---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequestsById("unifiedRoleAssignmentScheduleRequest-id").Cancel().Post(context.Background(), nil)


```