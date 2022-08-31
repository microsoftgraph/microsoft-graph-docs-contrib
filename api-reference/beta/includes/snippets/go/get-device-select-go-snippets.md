---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.DeviceRequestBuilderGetQueryParameters{
	Select: [] string {"id","extensionAttributes"},
}
configuration := &graphconfig.DeviceRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.DevicesById("device-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```