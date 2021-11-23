---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.DevicesRequestBuilderGetQueryParameters{
	Filter: "extensionAttributes/extensionAttribute1%20eq%20'BYOD-Device'",
	Count: true,
}
headers := map[string]string{
	"ConsistencyLevel": "eventual"
}
options := &msgraphsdk.DevicesRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
result, err := graphClient.Devices().Get(options)


```