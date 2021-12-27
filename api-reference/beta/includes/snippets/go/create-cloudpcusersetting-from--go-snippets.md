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
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.cloudPcUserSetting",
}
options := &msgraphsdk.UserSettingsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.DeviceManagement().VirtualEndpoint().UserSettings().Post(options)


```