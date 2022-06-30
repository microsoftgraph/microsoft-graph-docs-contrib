---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.SessionsRequestBuilderGetQueryParameters{
	Expand: "segments",
}
options := &msgraphsdk.SessionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
callRecordId := "callRecord-id"
result, err := graphClient.Communications().CallRecordsById(&callRecordId).Sessions().GetWithRequestConfigurationAndResponseHandler(options, nil)


```