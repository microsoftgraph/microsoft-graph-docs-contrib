---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.OnPremisesAgentGroupRequestBuilderGetQueryParameters{
	Expand: "publishedResources,agents",
}
options := &msgraphsdk.OnPremisesAgentGroupRequestBuilderGetOptions{
	Q: requestParameters,
}
onPremisesPublishingProfileId := "onPremisesPublishingProfile-id"
onPremisesAgentGroupId := "onPremisesAgentGroup-id"
result, err := graphClient.OnPremisesPublishingProfilesById(&onPremisesPublishingProfileId).AgentGroupsById(&onPremisesAgentGroupId).Get(options)


```