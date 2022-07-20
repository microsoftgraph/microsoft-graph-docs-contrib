---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChannel()
displayName := "Architecture Discussion"
requestBody.SetDisplayName(&displayName) 
description := "This channel is where we debate all future architecture plans"
requestBody.SetDescription(&description) 
membershipType := graphmodels.STANDARD_CHANNELMEMBERSHIPTYPE 
requestBody.SetMembershipType(&membershipType) 

result, err := graphClient.TeamsById("team-id").Channels().Post(requestBody)


```