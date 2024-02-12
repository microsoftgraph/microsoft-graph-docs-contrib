---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdeviceappmanagement "github.com/microsoftgraph/msgraph-sdk-go/deviceappmanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdeviceappmanagement.NewAssignPostRequestBody()


managedDeviceMobileAppConfigurationAssignment := graphmodels.NewManagedDeviceMobileAppConfigurationAssignment()
id := "4df81c9c-1c9c-4df8-9c1c-f84d9c1cf84d"
managedDeviceMobileAppConfigurationAssignment.SetId(&id) 
target := graphmodels.NewAllLicensedUsersAssignmentTarget()
managedDeviceMobileAppConfigurationAssignment.SetTarget(target)

assignments := []graphmodels.ManagedDeviceMobileAppConfigurationAssignmentable {
	managedDeviceMobileAppConfigurationAssignment,
}
requestBody.SetAssignments(assignments)

graphClient.DeviceAppManagement().MobileAppConfigurations().ByManagedDeviceMobileAppConfigurationId("managedDeviceMobileAppConfiguration-id").Assign().Post(context.Background(), requestBody, nil)


```