---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCloudPcUserSetting()
displayName := "Example"
requestBody.SetDisplayName(&displayName)
selfServiceEnabled := true
requestBody.SetSelfServiceEnabled(&selfServiceEnabled)
restorePointSetting := msgraphsdk.NewCloudPcRestorePointSetting()
requestBody.SetRestorePointSetting(restorePointSetting)
frequencyInHours := "16"
restorePointSetting.SetFrequencyInHours(&frequencyInHours)
userRestoreEnabled := true
restorePointSetting.SetUserRestoreEnabled(&userRestoreEnabled)
localAdminEnabled := false
requestBody.SetLocalAdminEnabled(&localAdminEnabled)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.cloudPcUserSetting",
}
options := &msgraphsdk.CloudPcUserSettingRequestBuilderPatchOptions{
	Body: requestBody,
}
cloudPcUserSettingId := "cloudPcUserSetting-id"
result, err := graphClient.DeviceManagement().VirtualEndpoint().UserSettingsById(&cloudPcUserSettingId).Patch(options)


```