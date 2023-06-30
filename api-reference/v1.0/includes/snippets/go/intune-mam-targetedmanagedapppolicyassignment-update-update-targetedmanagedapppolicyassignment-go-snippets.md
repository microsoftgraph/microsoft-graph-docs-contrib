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


requestBody := graphmodels.NewTargetedManagedAppPolicyAssignment()
target := graphmodels.NewConfigurationManagerCollectionAssignmentTarget()
collectionId := "Collection Id value"
target.SetCollectionId(&collectionId) 
requestBody.SetTarget(target)

result, err := graphClient.DeviceAppManagement().IosManagedAppProtections().ByIosManagedAppProtectionId("iosManagedAppProtection-id").Assignments().ByAssignmentId("targetedManagedAppPolicyAssignment-id").Patch(context.Background(), requestBody, nil)


```