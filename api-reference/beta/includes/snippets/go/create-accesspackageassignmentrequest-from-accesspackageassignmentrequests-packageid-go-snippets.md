---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageAssignmentRequest()
requestType := "userAdd"
requestBody.SetRequestType(&requestType) 
additionalData := map[string]interface{}{
assignment := graphmodels.New()
accessPackageId := "d7be3253-b9c6-4fab-adef-30d30de8da2b"
assignment.SetAccessPackageId(&accessPackageId) 
	requestBody.SetAssignment(assignment)
}
requestBody.SetAdditionalData(additionalData)

assignmentRequests, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().Post(context.Background(), requestBody, nil)


```