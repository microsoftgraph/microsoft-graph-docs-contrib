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
requestType := "adminAdd"
requestBody.SetRequestType(&requestType) 
additionalData := map[string]interface{}{
assignment := graphmodels.New()
targetId := "46184453-e63b-4f20-86c2-c557ed5d5df9"
assignment.SetTargetId(&targetId) 
assignmentPolicyId := "2264bf65-76ba-417b-a27d-54d291f0cbc8"
assignment.SetAssignmentPolicyId(&assignmentPolicyId) 
accessPackageId := "a914b616-e04e-476b-aa37-91038f0b165b"
assignment.SetAccessPackageId(&accessPackageId) 
	requestBody.SetAssignment(assignment)
}
requestBody.SetAdditionalData(additionalData)

assignmentRequests, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().Post(context.Background(), requestBody, nil)


```