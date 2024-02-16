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


targetedManagedAppPolicyAssignment := graphmodels.NewTargetedManagedAppPolicyAssignment()
id := "8b68c4a6-c4a6-8b68-a6c4-688ba6c4688b"
targetedManagedAppPolicyAssignment.SetId(&id) 
target := graphmodels.NewConfigurationManagerCollectionAssignmentTarget()
collectionId := "Collection Id value"
target.SetCollectionId(&collectionId) 
targetedManagedAppPolicyAssignment.SetTarget(target)

assignments := []graphmodels.TargetedManagedAppPolicyAssignmentable {
	targetedManagedAppPolicyAssignment,
}
requestBody.SetAssignments(assignments)

graphClient.DeviceAppManagement().TargetedManagedAppConfigurations().ByTargetedManagedAppConfigurationId("targetedManagedAppConfiguration-id").Assign().Post(context.Background(), requestBody, nil)


```