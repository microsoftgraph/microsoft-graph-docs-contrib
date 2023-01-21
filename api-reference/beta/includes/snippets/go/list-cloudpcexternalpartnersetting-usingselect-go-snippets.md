---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.DeviceManagementVirtualEndpointExternalPartnerSettingsRequestBuilderGetQueryParameters{
	Select: [] string {"id","partnerId","enableConnection"},
}
configuration := &graphconfig.DeviceManagementVirtualEndpointExternalPartnerSettingsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.DeviceManagement().VirtualEndpoint().ExternalPartnerSettings().Get(context.Background(), configuration)


```