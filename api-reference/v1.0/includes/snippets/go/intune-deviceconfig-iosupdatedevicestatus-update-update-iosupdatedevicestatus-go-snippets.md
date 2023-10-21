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


requestBody := graphmodels.NewIosUpdateDeviceStatus()
installStatus := graphmodels.AVAILABLE_IOSUPDATESINSTALLSTATUS 
requestBody.SetInstallStatus(&installStatus) 
osVersion := "Os Version value"
requestBody.SetOsVersion(&osVersion) 
deviceId := "Device Id value"
requestBody.SetDeviceId(&deviceId) 
userId := "User Id value"
requestBody.SetUserId(&userId) 
deviceDisplayName := "Device Display Name value"
requestBody.SetDeviceDisplayName(&deviceDisplayName) 
userName := "User Name value"
requestBody.SetUserName(&userName) 
deviceModel := "Device Model value"
requestBody.SetDeviceModel(&deviceModel) 
complianceGracePeriodExpirationDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:56:44.951111-08:00")
requestBody.SetComplianceGracePeriodExpirationDateTime(&complianceGracePeriodExpirationDateTime) 
status := graphmodels.NOTAPPLICABLE_COMPLIANCESTATUS 
requestBody.SetStatus(&status) 
lastReportedDateTime , err := time.Parse(time.RFC3339, "2017-01-01T00:00:17.7769392-08:00")
requestBody.SetLastReportedDateTime(&lastReportedDateTime) 
userPrincipalName := "User Principal Name value"
requestBody.SetUserPrincipalName(&userPrincipalName) 

iosUpdateStatuses, err := graphClient.DeviceManagement().IosUpdateStatuses().ByIosUpdateDeviceStatusId("iosUpdateDeviceStatus-id").Patch(context.Background(), requestBody, nil)


```