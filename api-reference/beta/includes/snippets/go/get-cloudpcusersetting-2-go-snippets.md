---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.CloudPcUserSettingRequestBuilderGetQueryParameters{
	Expand: [] string {"assignments"},
}
configuration := &graphconfig.CloudPcUserSettingRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.DeviceManagement().VirtualEndpoint().UserSettingsById("cloudPcUserSetting-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```