---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ExternalPartnerSettingsRequestBuilderGetQueryParameters{
	Select: [] string {"id","partnerId","enableConnection"},
}
configuration := &graphconfig.ExternalPartnerSettingsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.DeviceManagement().VirtualEndpoint().ExternalPartnerSettings().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```