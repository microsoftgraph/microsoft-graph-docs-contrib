---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.CommunicationsCallRecordItemRequestBuilderGetQueryParameters{
	Expand: [] string {"sessions($expand=segments)"},
}
configuration := &graphconfig.CommunicationsCallRecordItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Communications().CallRecordsById("callRecord-id").Get(context.Background(), configuration)


```