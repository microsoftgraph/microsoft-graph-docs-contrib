---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageAssignmentRequest()
requestType := "UserAdd"
requestBody.SetRequestType(&requestType) 
accessPackageAssignment := graphmodels.NewAccessPackageAssignment()
accessPackageId := "a914b616-e04e-476b-aa37-91038f0b165b"
accessPackageAssignment.SetAccessPackageId(&accessPackageId) 
requestBody.SetAccessPackageAssignment(accessPackageAssignment)
justification := "Need access to New Hire access package"
requestBody.SetJustification(&justification) 

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().Post(context.Background(), requestBody, nil)


```