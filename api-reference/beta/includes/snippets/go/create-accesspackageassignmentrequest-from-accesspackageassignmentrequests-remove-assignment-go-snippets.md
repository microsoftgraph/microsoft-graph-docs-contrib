---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAccessPackageAssignmentRequest()
requestType := "AdminRemove"
requestBody.SetRequestType(&requestType) 
accessPackageAssignment := graphmodels.NewAccessPackageAssignment()
id := "a6bb6942-3ae1-4259-9908-0133aaee9377"
accessPackageAssignment.SetId(&id) 
requestBody.SetAccessPackageAssignment(accessPackageAssignment)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackageAssignmentRequests, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().Post(context.Background(), requestBody, nil)


```