---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

unifiedRoleEligibilityScheduleId := "unifiedRoleEligibilitySchedule-id"
result, err := graphClient.RoleManagement().Directory().RoleEligibilitySchedulesById(&unifiedRoleEligibilityScheduleId).Get(options);


```