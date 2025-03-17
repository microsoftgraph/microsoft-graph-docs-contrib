---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAccessPackageAssignmentRequest()
requestType := graphmodels.ADMINADD_ACCESSPACKAGEREQUESTTYPE 
requestBody.SetRequestType(&requestType) 
assignment := graphmodels.NewAccessPackageAssignment()
target := graphmodels.NewAccessPackageSubject()
email := "user@contoso.com"
target.SetEmail(&email) 
assignment.SetTarget(target)
assignmentPolicy := graphmodels.NewAccessPackageAssignmentPolicy()
id := "11114b50-0a08-4f96-83e9-1d714aa2cd79"
assignmentPolicy.SetId(&id) 
assignment.SetAssignmentPolicy(assignmentPolicy)
accessPackage := graphmodels.NewAccessPackage()
id := "11115C72-0612-4C43-A044-FC0A4E71A4C5"
accessPackage.SetId(&id) 
assignment.SetAccessPackage(accessPackage)
requestBody.SetAssignment(assignment)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignmentRequests, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().Post(context.Background(), requestBody, nil)


```