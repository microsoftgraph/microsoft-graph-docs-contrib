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


requestBody := graphmodels.NewTargetedManagedAppPolicyAssignment()
target := graphmodels.NewConfigurationManagerCollectionAssignmentTarget()
collectionId := "Collection Id value"
target.SetCollectionId(&collectionId) 
requestBody.SetTarget(target)

assignments, err := graphClient.DeviceAppManagement().IosManagedAppProtections().ByIosManagedAppProtectionId("iosManagedAppProtection-id").Assignments().ByTargetedManagedAppPolicyAssignmentId("targetedManagedAppPolicyAssignment-id").Patch(context.Background(), requestBody, nil)


```