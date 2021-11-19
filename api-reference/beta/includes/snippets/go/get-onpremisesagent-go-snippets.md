---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.OnPremisesAgentRequestBuilderGetQueryParameters{
	Expand: "agentGroups",
}
options := &msgraphsdk.OnPremisesAgentRequestBuilderGetOptions{
	Q: requestParameters,
}
onPremisesPublishingProfileId := "onPremisesPublishingProfile-id"
onPremisesAgentId := "onPremisesAgent-id"
result, err := graphClient.OnPremisesPublishingProfilesById(&onPremisesPublishingProfileId).AgentsById(&onPremisesAgentId).Get(options)


```