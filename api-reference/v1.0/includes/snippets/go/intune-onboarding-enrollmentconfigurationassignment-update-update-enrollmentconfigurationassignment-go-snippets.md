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


requestBody := graphmodels.NewEnrollmentConfigurationAssignment()
target := graphmodels.NewConfigurationManagerCollectionAssignmentTarget()
collectionId := "Collection Id value"
target.SetCollectionId(&collectionId) 
requestBody.SetTarget(target)

assignments, err := graphClient.DeviceManagement().DeviceEnrollmentConfigurations().ByDeviceEnrollmentConfigurationId("deviceEnrollmentConfiguration-id").Assignments().ByEnrollmentConfigurationAssignmentId("enrollmentConfigurationAssignment-id").Patch(context.Background(), requestBody, nil)


```