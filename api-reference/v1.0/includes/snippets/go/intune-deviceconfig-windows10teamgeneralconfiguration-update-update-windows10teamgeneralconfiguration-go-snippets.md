---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeviceConfiguration()
description := "Description value"
requestBody.SetDescription(&description) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
version := int32(7)
requestBody.SetVersion(&version) 
azureOperationalInsightsBlockTelemetry := true
requestBody.SetAzureOperationalInsightsBlockTelemetry(&azureOperationalInsightsBlockTelemetry) 
azureOperationalInsightsWorkspaceId := "Azure Operational Insights Workspace Id value"
requestBody.SetAzureOperationalInsightsWorkspaceId(&azureOperationalInsightsWorkspaceId) 
azureOperationalInsightsWorkspaceKey := "Azure Operational Insights Workspace Key value"
requestBody.SetAzureOperationalInsightsWorkspaceKey(&azureOperationalInsightsWorkspaceKey) 
connectAppBlockAutoLaunch := true
requestBody.SetConnectAppBlockAutoLaunch(&connectAppBlockAutoLaunch) 
maintenanceWindowBlocked := true
requestBody.SetMaintenanceWindowBlocked(&maintenanceWindowBlocked) 
maintenanceWindowDurationInHours := int32(0)
requestBody.SetMaintenanceWindowDurationInHours(&maintenanceWindowDurationInHours) 
maintenanceWindowStartTime := 11:59:09.3130000
requestBody.SetMaintenanceWindowStartTime(&maintenanceWindowStartTime) 
miracastChannel := graphmodels.ONE_MIRACASTCHANNEL 
requestBody.SetMiracastChannel(&miracastChannel) 
miracastBlocked := true
requestBody.SetMiracastBlocked(&miracastBlocked) 
miracastRequirePin := true
requestBody.SetMiracastRequirePin(&miracastRequirePin) 
settingsBlockMyMeetingsAndFiles := true
requestBody.SetSettingsBlockMyMeetingsAndFiles(&settingsBlockMyMeetingsAndFiles) 
settingsBlockSessionResume := true
requestBody.SetSettingsBlockSessionResume(&settingsBlockSessionResume) 
settingsBlockSigninSuggestions := true
requestBody.SetSettingsBlockSigninSuggestions(&settingsBlockSigninSuggestions) 
settingsDefaultVolume := int32(5)
requestBody.SetSettingsDefaultVolume(&settingsDefaultVolume) 
settingsScreenTimeoutInMinutes := int32(14)
requestBody.SetSettingsScreenTimeoutInMinutes(&settingsScreenTimeoutInMinutes) 
settingsSessionTimeoutInMinutes := int32(15)
requestBody.SetSettingsSessionTimeoutInMinutes(&settingsSessionTimeoutInMinutes) 
settingsSleepTimeoutInMinutes := int32(13)
requestBody.SetSettingsSleepTimeoutInMinutes(&settingsSleepTimeoutInMinutes) 
welcomeScreenBlockAutomaticWakeUp := true
requestBody.SetWelcomeScreenBlockAutomaticWakeUp(&welcomeScreenBlockAutomaticWakeUp) 
welcomeScreenBackgroundImageUrl := "https://example.com/welcomeScreenBackgroundImageUrl/"
requestBody.SetWelcomeScreenBackgroundImageUrl(&welcomeScreenBackgroundImageUrl) 
welcomeScreenMeetingInformation := graphmodels.SHOWORGANIZERANDTIMEONLY_WELCOMESCREENMEETINGINFORMATION 
requestBody.SetWelcomeScreenMeetingInformation(&welcomeScreenMeetingInformation) 

deviceConfigurations, err := graphClient.DeviceManagement().DeviceConfigurations().ByDeviceConfigurationId("deviceConfiguration-id").Patch(context.Background(), requestBody, nil)


```