---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.MembersRequestBuilderGetQueryParameters{
	Filter: "roles/any",
}
configuration := &graphconfig.MembersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.TeamsById("team-id").Members().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```