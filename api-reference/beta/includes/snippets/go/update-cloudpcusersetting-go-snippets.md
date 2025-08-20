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

requestBody := graphmodels.NewCloudPcUserSetting()
displayName := "Example"
requestBody.SetDisplayName(&displayName) 
selfServiceEnabled := true
requestBody.SetSelfServiceEnabled(&selfServiceEnabled) 
restorePointSetting := graphmodels.NewCloudPcRestorePointSetting()
frequencyInHours := int32(16)
restorePointSetting.SetFrequencyInHours(&frequencyInHours) 
frequencyType := graphmodels.SIXTEENHOURS_CLOUDPCRESTOREPOINTFREQUENCYTYPE 
restorePointSetting.SetFrequencyType(&frequencyType) 
userRestoreEnabled := true
restorePointSetting.SetUserRestoreEnabled(&userRestoreEnabled) 
requestBody.SetRestorePointSetting(restorePointSetting)
crossRegionDisasterRecoverySetting := graphmodels.NewCloudPcCrossRegionDisasterRecoverySetting()
crossRegionDisasterRecoveryEnabled := false
crossRegionDisasterRecoverySetting.SetCrossRegionDisasterRecoveryEnabled(&crossRegionDisasterRecoveryEnabled) 
maintainCrossRegionRestorePointEnabled := true
crossRegionDisasterRecoverySetting.SetMaintainCrossRegionRestorePointEnabled(&maintainCrossRegionRestorePointEnabled) 
disasterRecoveryNetworkSetting := graphmodels.NewCloudPcDisasterRecoveryNetworkSetting()
additionalData := map[string]interface{}{
	"regionName" : "westus", 
	"regionGroup" : "usEast", 
}
disasterRecoveryNetworkSetting.SetAdditionalData(additionalData)
crossRegionDisasterRecoverySetting.SetDisasterRecoveryNetworkSetting(disasterRecoveryNetworkSetting)
disasterRecoveryType := graphmodels.PREMIUM_CLOUDPCDISASTERRECOVERYTYPE 
crossRegionDisasterRecoverySetting.SetDisasterRecoveryType(&disasterRecoveryType) 
userInitiatedDisasterRecoveryAllowed := true
crossRegionDisasterRecoverySetting.SetUserInitiatedDisasterRecoveryAllowed(&userInitiatedDisasterRecoveryAllowed) 
requestBody.SetCrossRegionDisasterRecoverySetting(crossRegionDisasterRecoverySetting)
provisioningSourceType := graphmodels.IMAGE_CLOUDPCPROVISIONINGSOURCETYPE 
requestBody.SetProvisioningSourceType(&provisioningSourceType) 
localAdminEnabled := false
requestBody.SetLocalAdminEnabled(&localAdminEnabled) 
resetEnabled := true
requestBody.SetResetEnabled(&resetEnabled) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
userSettings, err := graphClient.DeviceManagement().VirtualEndpoint().UserSettings().ByCloudPcUserSettingId("cloudPcUserSetting-id").Patch(context.Background(), requestBody, nil)


```