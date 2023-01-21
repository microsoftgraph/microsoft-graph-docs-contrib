---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.OnPremisesPublishingProfileItemAgentItemRequestBuilderGetQueryParameters{
	Expand: [] string {"agentGroups"},
}
configuration := &graphconfig.OnPremisesPublishingProfileItemAgentItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").AgentsById("onPremisesAgent-id").Get(context.Background(), configuration)


```