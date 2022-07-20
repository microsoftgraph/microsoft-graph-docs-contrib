---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AgentGroupsRequestBuilderGetQueryParameters{
	Expand: [] string {"agents","publishedResources"},
}
configuration := &graphconfig.AgentGroupsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").AgentGroups().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```