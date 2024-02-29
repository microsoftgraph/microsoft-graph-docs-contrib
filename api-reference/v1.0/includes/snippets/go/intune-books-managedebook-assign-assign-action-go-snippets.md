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


managedEBookAssignment := graphmodels.NewManagedEBookAssignment()
id := "ae8b0d27-0d27-ae8b-270d-8bae270d8bae"
managedEBookAssignment.SetId(&id) 
target := graphmodels.NewAllLicensedUsersAssignmentTarget()
managedEBookAssignment.SetTarget(target)
installIntent := graphmodels.REQUIRED_INSTALLINTENT 
managedEBookAssignment.SetInstallIntent(&installIntent) 

managedEBookAssignments := []graphmodels.ManagedEBookAssignmentable {
	managedEBookAssignment,
}
requestBody.SetManagedEBookAssignments(managedEBookAssignments)

graphClient.DeviceAppManagement().ManagedEBooks().ByManagedEBookId("managedEBook-id").Assign().Post(context.Background(), requestBody, nil)


```