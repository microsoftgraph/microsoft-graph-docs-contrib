---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewMobileAppAssignment()
intent := graphmodels.REQUIRED_INSTALLINTENT 
requestBody.SetIntent(&intent) 
target := graphmodels.NewAllLicensedUsersAssignmentTarget()
requestBody.SetTarget(target)
settings := graphmodels.NewWindowsUniversalAppXAppAssignmentSettings()
useDeviceContext := true
settings.SetUseDeviceContext(&useDeviceContext) 
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignments, err := graphClient.DeviceAppManagement().MobileApps().ByMobileAppId("mobileApp-id").Assignments().Post(context.Background(), requestBody, nil)


```