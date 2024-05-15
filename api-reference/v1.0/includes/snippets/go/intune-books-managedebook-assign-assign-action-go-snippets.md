---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdeviceappmanagement "github.com/microsoftgraph/msgraph-sdk-go/deviceappmanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceAppManagement().ManagedEBooks().ByManagedEBookId("managedEBook-id").Assign().Post(context.Background(), requestBody, nil)


```