---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewOnPremisesAgentGroup()
displayName := "Group New Name"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").AgentGroupsById("onPremisesAgentGroup-id").Patch(context.Background(), requestBody, nil)


```