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
requestType := "UserAdd"
requestBody.SetRequestType(&requestType) 
accessPackageAssignment := graphmodels.NewAccessPackageAssignment()
targetId := "007d1c7e-7fa8-4e33-b678-5e437acdcddc"
accessPackageAssignment.SetTargetId(&targetId) 
assignmentPolicyId := "db440482-1210-4a60-9b55-3ac7a72f63ba"
accessPackageAssignment.SetAssignmentPolicyId(&assignmentPolicyId) 
accessPackageId := "88203d16-0e31-41d4-87b2-dd402f1435e9"
accessPackageAssignment.SetAccessPackageId(&accessPackageId) 
requestBody.SetAccessPackageAssignment(accessPackageAssignment)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackageAssignmentRequests, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().Post(context.Background(), requestBody, nil)


```