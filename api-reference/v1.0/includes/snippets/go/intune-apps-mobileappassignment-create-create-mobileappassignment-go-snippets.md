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


requestBody := graphmodels.NewMobileAppAssignment()
intent := graphmodels.REQUIRED_INSTALLINTENT 
requestBody.SetIntent(&intent) 
target := graphmodels.NewAllLicensedUsersAssignmentTarget()
requestBody.SetTarget(target)
settings := graphmodels.NewWindowsUniversalAppXAppAssignmentSettings()
useDeviceContext := true
settings.SetUseDeviceContext(&useDeviceContext) 
requestBody.SetSettings(settings)

result, err := graphClient.DeviceAppManagement().MobileApps().ByMobileAppId("mobileApp-id").Assignments().Post(context.Background(), requestBody, nil)


```