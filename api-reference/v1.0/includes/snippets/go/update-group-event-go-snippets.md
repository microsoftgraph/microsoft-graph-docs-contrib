---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEvent()
location := graphmodels.NewLocation()
displayName := "Conf Room 2"
location.SetDisplayName(&displayName) 
requestBody.SetLocation(location)

graphClient.GroupsById("group-id").Calendar().EventsById("event-id").Patch(requestBody)


```