---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewAssignPostRequestBody()


enrollmentConfigurationAssignment := graphmodels.NewEnrollmentConfigurationAssignment()
id := "705b021c-021c-705b-1c02-5b701c025b70"
enrollmentConfigurationAssignment.SetId(&id) 
target := graphmodels.NewConfigurationManagerCollectionAssignmentTarget()
collectionId := "Collection Id value"
target.SetCollectionId(&collectionId) 
enrollmentConfigurationAssignment.SetTarget(target)

enrollmentConfigurationAssignments := []graphmodels.EnrollmentConfigurationAssignmentable {
	enrollmentConfigurationAssignment,
}
requestBody.SetEnrollmentConfigurationAssignments(enrollmentConfigurationAssignments)

graphClient.DeviceManagement().DeviceEnrollmentConfigurations().ByDeviceEnrollmentConfigurationId("deviceEnrollmentConfiguration-id").Assign().Post(context.Background(), requestBody, nil)


```