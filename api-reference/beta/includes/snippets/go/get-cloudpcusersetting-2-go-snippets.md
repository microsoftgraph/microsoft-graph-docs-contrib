---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.CloudPcUserSettingRequestBuilderGetQueryParameters{
	Expand: "assignments",
}
options := &msgraphsdk.CloudPcUserSettingRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
cloudPcUserSettingId := "cloudPcUserSetting-id"
result, err := graphClient.DeviceManagement().VirtualEndpoint().UserSettingsById(&cloudPcUserSettingId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```