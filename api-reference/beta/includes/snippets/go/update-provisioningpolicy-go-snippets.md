---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewCloudPcProvisioningPolicy()
displayName := "HR provisioning policy"
requestBody.SetDisplayName(&displayName) 
description := "Provisioning policy for India HR employees"
requestBody.SetDescription(&description) 
imageId := "Image ID value"
requestBody.SetImageId(&imageId) 
imageDisplayName := "Image Display Name value"
requestBody.SetImageDisplayName(&imageDisplayName) 
imageType := graphmodels.CUSTOM_CLOUDPCPROVISIONINGPOLICYIMAGETYPE 
requestBody.SetImageType(&imageType) 
windowsSettings := graphmodels.NewCloudPcWindowsSettings()
language := "en-US"
windowsSettings.SetLanguage(&language) 
requestBody.SetWindowsSettings(windowsSettings)
windowsSetting := graphmodels.NewCloudPcWindowsSetting()
locale := "en-US"
windowsSetting.SetLocale(&locale) 
requestBody.SetWindowsSetting(windowsSetting)
microsoftManagedDesktop := graphmodels.NewMicrosoftManagedDesktop()
managedType := graphmodels.STARTERMANAGED_MICROSOFTMANAGEDDESKTOPTYPE 
microsoftManagedDesktop.SetManagedType(&managedType) 
profile := null
microsoftManagedDesktop.SetProfile(&profile) 
requestBody.SetMicrosoftManagedDesktop(microsoftManagedDesktop)
autopatch := graphmodels.NewCloudPcProvisioningPolicyAutopatch()
autopatchGroupId := "91197a0b-3a74-408d-ba88-bce3fdc4e5eb"
autopatch.SetAutopatchGroupId(&autopatchGroupId) 
requestBody.SetAutopatch(autopatch)
autopilotConfiguration := graphmodels.NewCloudPcAutopilotConfiguration()
devicePreparationProfileId := "59e5d3d2-ec68-4bfe-9693-27975b318990"
autopilotConfiguration.SetDevicePreparationProfileId(&devicePreparationProfileId) 
applicationTimeoutInMinutes := int32(30)
autopilotConfiguration.SetApplicationTimeoutInMinutes(&applicationTimeoutInMinutes) 
onFailureDeviceAccessDenied := false
autopilotConfiguration.SetOnFailureDeviceAccessDenied(&onFailureDeviceAccessDenied) 
requestBody.SetAutopilotConfiguration(autopilotConfiguration)
userSettingsPersistenceConfiguration := graphmodels.NewCloudPcUserSettingsPersistenceConfiguration()
userSettingsPersistenceEnabled := false
userSettingsPersistenceConfiguration.SetUserSettingsPersistenceEnabled(&userSettingsPersistenceEnabled) 
userSettingsPersistenceStorageSizeCategory := graphmodels.FOURGB_CLOUDPCUSERSETTINGSPERSISTENCESTORAGESIZECATEGORY 
userSettingsPersistenceConfiguration.SetUserSettingsPersistenceStorageSizeCategory(&userSettingsPersistenceStorageSizeCategory) 
requestBody.SetUserSettingsPersistenceConfiguration(userSettingsPersistenceConfiguration)
additionalData := map[string]interface{}{
	"onPremisesConnectionId" : "4e47d0f6-6f77-44f0-8893-c0fe1701ffff", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
provisioningPolicies, err := graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().ByCloudPcProvisioningPolicyId("cloudPcProvisioningPolicy-id").Patch(context.Background(), requestBody, nil)


```