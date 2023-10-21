---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeviceComplianceSettingState()
setting := "Setting value"
requestBody.SetSetting(&setting) 
settingName := "Setting Name value"
requestBody.SetSettingName(&settingName) 
deviceId := "Device Id value"
requestBody.SetDeviceId(&deviceId) 
deviceName := "Device Name value"
requestBody.SetDeviceName(&deviceName) 
userId := "User Id value"
requestBody.SetUserId(&userId) 
userEmail := "User Email value"
requestBody.SetUserEmail(&userEmail) 
userName := "User Name value"
requestBody.SetUserName(&userName) 
userPrincipalName := "User Principal Name value"
requestBody.SetUserPrincipalName(&userPrincipalName) 
deviceModel := "Device Model value"
requestBody.SetDeviceModel(&deviceModel) 
state := graphmodels.NOTAPPLICABLE_COMPLIANCESTATUS 
requestBody.SetState(&state) 
complianceGracePeriodExpirationDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:56:44.951111-08:00")
requestBody.SetComplianceGracePeriodExpirationDateTime(&complianceGracePeriodExpirationDateTime) 

deviceComplianceSettingStates, err := graphClient.DeviceManagement().DeviceCompliancePolicySettingStateSummaries().ByDeviceCompliancePolicySettingStateSummaryId("deviceCompliancePolicySettingStateSummary-id").DeviceComplianceSettingStates().Post(context.Background(), requestBody, nil)


```