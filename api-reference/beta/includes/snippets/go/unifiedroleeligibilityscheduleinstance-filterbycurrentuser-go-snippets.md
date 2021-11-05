---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

unifiedRoleEligibilityScheduleInstanceId := "unifiedRoleEligibilityScheduleInstance-id"
result, err := graphClient.RoleManagement().Directory().RoleEligibilityScheduleInstancesById(&unifiedRoleEligibilityScheduleInstanceId).Get(options);


```