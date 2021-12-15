---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

teamId := "team-id"
schedulingGroupId := "schedulingGroup-id"
result, err := graphClient.TeamsById(&teamId).Schedule().SchedulingGroupsById(&schedulingGroupId).Get(nil)


```