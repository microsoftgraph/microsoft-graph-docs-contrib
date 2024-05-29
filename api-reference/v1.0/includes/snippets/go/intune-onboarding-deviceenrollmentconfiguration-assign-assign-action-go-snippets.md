---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().DeviceEnrollmentConfigurations().ByDeviceEnrollmentConfigurationId("deviceEnrollmentConfiguration-id").Assign().Post(context.Background(), requestBody, nil)


```