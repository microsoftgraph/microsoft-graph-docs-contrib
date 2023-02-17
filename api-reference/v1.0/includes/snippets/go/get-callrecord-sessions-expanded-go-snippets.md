---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.CommunicationsCallRecordItemSessionsRequestBuilderGetQueryParameters{
	Expand: [] string {"segments"},
}
configuration := &graphconfig.CommunicationsCallRecordItemSessionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Communications().CallRecordsById("callRecord-id").Sessions().Get(context.Background(), configuration)


```