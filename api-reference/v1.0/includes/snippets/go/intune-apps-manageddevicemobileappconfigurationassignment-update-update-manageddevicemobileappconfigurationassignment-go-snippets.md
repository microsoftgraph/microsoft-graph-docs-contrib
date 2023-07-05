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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewManagedDeviceMobileAppConfigurationAssignment()
target := graphmodels.NewAllLicensedUsersAssignmentTarget()
requestBody.SetTarget(target)

result, err := graphClient.DeviceAppManagement().MobileAppConfigurations().ByMobileAppConfigurationId("managedDeviceMobileAppConfiguration-id").Assignments().ByAssignmentId("managedDeviceMobileAppConfigurationAssignment-id").Patch(context.Background(), requestBody, nil)


```