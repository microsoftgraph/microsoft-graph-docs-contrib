---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.OnPremisesAgentGroupRequestBuilderGetQueryParameters{
	Expand: [] string {"publishedResources","agents"},
}
configuration := &graphconfig.OnPremisesAgentGroupRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").AgentGroupsById("onPremisesAgentGroup-id").Get(context.Background(), configuration)


```