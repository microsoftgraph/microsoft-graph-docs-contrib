---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.DirectoryObjectRequestBuilderGetQueryParameters{
	Count: true,
	OrderBy: "displayName",
	Filter: "startswith(displayName,%20'a')",
}
headers := map[string]string{
	"ConsistencyLevel": "eventual"
}
options := &msgraphsdk.DirectoryObjectRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
deviceId := "device-id"
directoryObjectId := "directoryObject-id"
result, err := graphClient.DevicesById(&deviceId).TransitiveMemberOfById(&directoryObjectId).Get(options)


```