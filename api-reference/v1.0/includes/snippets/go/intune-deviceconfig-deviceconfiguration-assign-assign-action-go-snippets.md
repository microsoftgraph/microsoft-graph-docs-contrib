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


deviceConfigurationAssignment := graphmodels.NewDeviceConfigurationAssignment()
id := "d59b6342-6342-d59b-4263-9bd542639bd5"
deviceConfigurationAssignment.SetId(&id) 
target := graphmodels.NewConfigurationManagerCollectionAssignmentTarget()
collectionId := "Collection Id value"
target.SetCollectionId(&collectionId) 
deviceConfigurationAssignment.SetTarget(target)

assignments := []graphmodels.DeviceConfigurationAssignmentable {
	deviceConfigurationAssignment,
}
requestBody.SetAssignments(assignments)

assign, err := graphClient.DeviceManagement().DeviceConfigurations().ByDeviceConfigurationId("deviceConfiguration-id").Assign().Post(context.Background(), requestBody, nil)


```