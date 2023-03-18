---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.OnPremisesPublishingProfileItemAgentGroupsRequestBuilderGetQueryParameters{
	Expand: [] string {"agents","publishedResources"},
}
configuration := &graphconfig.OnPremisesPublishingProfileItemAgentGroupsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").AgentGroups().Get(context.Background(), configuration)


```