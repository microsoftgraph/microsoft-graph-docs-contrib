---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.OnPremisesPublishingProfileItemAgentGroupItemRequestBuilderGetQueryParameters{
	Expand: [] string {"publishedResources","agents"},
}
configuration := &graphconfig.OnPremisesPublishingProfileItemAgentGroupItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").AgentGroupsById("onPremisesAgentGroup-id").Get(context.Background(), configuration)


```