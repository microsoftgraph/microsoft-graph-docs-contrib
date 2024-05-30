---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceComplianceSettingStates, err := graphClient.DeviceManagement().DeviceCompliancePolicySettingStateSummaries().ByDeviceCompliancePolicySettingStateSummaryId("deviceCompliancePolicySettingStateSummary-id").DeviceComplianceSettingStates().Post(context.Background(), requestBody, nil)


```