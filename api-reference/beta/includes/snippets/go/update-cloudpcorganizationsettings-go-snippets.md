---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCloudPcOrganizationSettings()
userAccountType := "standardUser"
requestBody.SetUserAccountType(&userAccountType)
osVersion := "windows11"
requestBody.SetOsVersion(&osVersion)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.cloudPcOrganizationSettings",
}
options := &msgraphsdk.OrganizationSettingsRequestBuilderPatchOptions{
	Body: requestBody,
}
graphClient.DeviceManagement().VirtualEndpoint().OrganizationSettings().Patch(options)


```