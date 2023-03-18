---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewEvent()
location := graphmodels.NewLocation()
displayName := "Conf Room 2"
location.SetDisplayName(&displayName) 
requestBody.SetLocation(location)

result, err := graphClient.GroupsById("group-id").Calendar().EventsById("event-id").Patch(context.Background(), requestBody, nil)


```