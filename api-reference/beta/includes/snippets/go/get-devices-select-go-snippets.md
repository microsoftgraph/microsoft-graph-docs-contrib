---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.DevicesRequestBuilderGetQueryParameters{
	Select: "id,extensionAttributes",
}
options := &msgraphsdk.DevicesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Devices().GetWithRequestConfigurationAndResponseHandler(options, nil)


```