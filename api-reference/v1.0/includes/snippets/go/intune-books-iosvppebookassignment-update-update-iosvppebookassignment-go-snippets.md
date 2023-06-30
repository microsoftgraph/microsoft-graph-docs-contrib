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


requestBody := graphmodels.NewManagedEBookAssignment()
target := graphmodels.NewDeviceAndAppManagementAssignmentTarget()
requestBody.SetTarget(target)
installIntent := graphmodels.REQUIRED_INSTALLINTENT 
requestBody.SetInstallIntent(&installIntent) 

result, err := graphClient.DeviceAppManagement().ManagedEBooks().ByManagedEBookId("managedEBook-id").Assignments().ByAssignmentId("managedEBookAssignment-id").Patch(context.Background(), requestBody, nil)


```