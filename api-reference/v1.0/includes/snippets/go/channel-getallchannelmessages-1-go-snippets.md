---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "lastModifiedDateTime gt 2019-11-01T00:00:00Z and lastModifiedDateTime lt 2021-11-01T00:00:00Z"

requestParameters := &graphconfig.GetAllMessagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.GetAllMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.TeamsById("team-id").Channels().GetAllMessages().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```