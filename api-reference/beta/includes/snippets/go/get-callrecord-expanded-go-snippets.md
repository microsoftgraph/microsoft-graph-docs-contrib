---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.CallRecordRequestBuilderGetQueryParameters{
	Expand: "sessions($expand=segments)",
}
options := &msgraphsdk.CallRecordRequestBuilderGetOptions{
	Q: requestParameters,
}
callRecordId := "callRecord-id"
result, err := graphClient.Communications().CallRecordsById(&callRecordId).Get(options);


```