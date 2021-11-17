---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

projectParticipationId := "projectParticipation-id"
graphClient.Me().Profile().ProjectsById(&projectParticipationId).Delete(options)


```