---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.OnPremisesPublishingProfileItemAgentsRequestBuilderGetQueryParameters{
	Expand: [] string {"agentGroups"},
}
configuration := &graphconfig.OnPremisesPublishingProfileItemAgentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").Agents().Get(context.Background(), configuration)


```