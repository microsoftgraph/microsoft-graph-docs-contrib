---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

teamId := "team-id"
shiftId := "shift-id"
result, err := graphClient.TeamsById(&teamId).Schedule().ShiftsById(&shiftId).Get(options)


```