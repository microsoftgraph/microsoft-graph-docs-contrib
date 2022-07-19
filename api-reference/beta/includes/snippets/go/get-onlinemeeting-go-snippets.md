---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.OnlineMeetingsRequestBuilderGetQueryParameters{
	Filter: "VideoTeleconferenceId eq '123456789'",
}
configuration := &graphconfig.OnlineMeetingsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Communications().OnlineMeetings().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```