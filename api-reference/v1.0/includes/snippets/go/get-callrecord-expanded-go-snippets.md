---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.CallRecordRequestBuilderGetQueryParameters{
	Expand: [] string {"sessions($expand=segments)"},
}
configuration := &graphconfig.CallRecordRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Communications().CallRecordsById("callRecord-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```