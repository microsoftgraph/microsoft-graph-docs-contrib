---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.DevicesRequestBuilderGetQueryParameters{
	Select: "id,extensionAttributes",
}
options := &msgraphsdk.DevicesRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Devices().Get(options);


```