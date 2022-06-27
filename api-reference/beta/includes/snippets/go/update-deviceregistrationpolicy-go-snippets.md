---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"id": "deviceRegistrationPolicy",
	"displayName": "Device Registration Policy",
	"description": "Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks",
	"userDeviceQuota": ,
	"multiFactorAuthConfiguration": "0",
}
graphClient.DeviceRegistrationPolicy().Put(requestBody)


```