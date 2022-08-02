---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDeviceRegistrationPolicyPostRequestBody()
additionalData := map[string]interface{}{
	"id" : "deviceRegistrationPolicy", 
	"displayName" : "Device Registration Policy", 
	"description" : "Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks", 
	"userDeviceQuota" : int32(50) , 
	"multiFactorAuthConfiguration" : "0", 
azureADRegistration := graphmodels.New()
appliesTo := "1"
azureADRegistration.SetAppliesTo(&appliesTo) 
	isAdminConfigurable := false
azureADRegistration.SetIsAdminConfigurable(&isAdminConfigurable) 
	allowedUsers := []graphmodels.able {

	}
	azureADRegistration.SetAllowedUsers(allowedUsers)
	allowedGroups := []graphmodels.able {

	}
	azureADRegistration.SetAllowedGroups(allowedGroups)
	requestBody.SetAzureADRegistration(azureADRegistration)
azureADJoin := graphmodels.New()
appliesTo := "1"
azureADJoin.SetAppliesTo(&appliesTo) 
	isAdminConfigurable := true
azureADJoin.SetIsAdminConfigurable(&isAdminConfigurable) 
	allowedUsers := []graphmodels.able {

	}
	azureADJoin.SetAllowedUsers(allowedUsers)
	allowedGroups := []graphmodels.able {

	}
	azureADJoin.SetAllowedGroups(allowedGroups)
	requestBody.SetAzureADJoin(azureADJoin)
}
requestBody.SetAdditionalData(additionalData)

graphClient.DeviceRegistrationPolicy().Put(requestBody)


```