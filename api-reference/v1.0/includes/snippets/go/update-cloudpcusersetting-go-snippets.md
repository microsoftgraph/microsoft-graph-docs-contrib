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


requestBody := graphmodels.NewCloudPcUserSetting()
displayName := "Example"
requestBody.SetDisplayName(&displayName) 
restorePointSetting := graphmodels.NewCloudPcRestorePointSetting()
frequencyType := graphmodels.SIXTEENHOURS_CLOUDPCRESTOREPOINTFREQUENCYTYPE 
restorePointSetting.SetFrequencyType(&frequencyType) 
userRestoreEnabled := true
restorePointSetting.SetUserRestoreEnabled(&userRestoreEnabled) 
requestBody.SetRestorePointSetting(restorePointSetting)
localAdminEnabled := false
requestBody.SetLocalAdminEnabled(&localAdminEnabled) 
resetEnabled := true
requestBody.SetResetEnabled(&resetEnabled) 

userSettings, err := graphClient.DeviceManagement().VirtualEndpoint().UserSettings().ByCloudPcUserSettingId("cloudPcUserSetting-id").Patch(context.Background(), requestBody, nil)


```