---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.DirectoryObjectRequestBuilderGetQueryParameters{
	Count: true,
	OrderBy: "displayName",
	Filter: "startswith(displayName,%20'A')",
}
headers := map[string]string{
	"ConsistencyLevel": "eventual"
}
options := &msgraphsdk.DirectoryObjectRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
	Headers: headers,
}
deviceId := "device-id"
directoryObjectId := "directoryObject-id"
result, err := graphClient.DevicesById(&deviceId).MemberOfById(&directoryObjectId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```