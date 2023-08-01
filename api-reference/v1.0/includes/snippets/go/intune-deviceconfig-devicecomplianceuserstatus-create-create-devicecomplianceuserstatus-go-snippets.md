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


requestBody := graphmodels.NewDeviceComplianceUserStatus()
userDisplayName := "User Display Name value"
requestBody.SetUserDisplayName(&userDisplayName) 
devicesCount := int32(12)
requestBody.SetDevicesCount(&devicesCount) 
status := graphmodels.NOTAPPLICABLE_COMPLIANCESTATUS 
requestBody.SetStatus(&status) 
lastReportedDateTime , err := time.Parse(time.RFC3339, "2017-01-01T00:00:17.7769392-08:00")
requestBody.SetLastReportedDateTime(&lastReportedDateTime) 
userPrincipalName := "User Principal Name value"
requestBody.SetUserPrincipalName(&userPrincipalName) 

result, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicieId("deviceCompliancePolicy-id").UserStatuses().Post(context.Background(), requestBody, nil)


```