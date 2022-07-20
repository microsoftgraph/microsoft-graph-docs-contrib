---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AllChannelsRequestBuilderGetQueryParameters{
	Filter: "membershipType eq 'shared'",
}
configuration := &graphconfig.AllChannelsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.TeamsById("team-id").AllChannels().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```