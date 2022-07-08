---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCloudPcUserSetting()
displayName := "Example"
requestBody.SetDisplayName(&displayName)
selfServiceEnabled := false
requestBody.SetSelfServiceEnabled(&selfServiceEnabled)
localAdminEnabled := true
requestBody.SetLocalAdminEnabled(&localAdminEnabled)
restorePointSetting := msgraphsdk.NewCloudPcRestorePointSetting()
requestBody.SetRestorePointSetting(restorePointSetting)
frequencyInHours := int32(16)
restorePointSetting.SetFrequencyInHours(&frequencyInHours)
userRestoreEnabled := true
restorePointSetting.SetUserRestoreEnabled(&userRestoreEnabled)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.cloudPcUserSetting",
}
result, err := graphClient.DeviceManagement().VirtualEndpoint().UserSettings().Post(requestBody)


```