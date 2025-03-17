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
justification := "Access for direct employee"
requestBody.SetJustification(&justification) 
requestType := "UserAdd"
requestBody.SetRequestType(&requestType) 
answers := []graphmodels.AccessPackageAnswerable {

}
requestBody.SetAnswers(answers)
additionalData := map[string]interface{}{
assignment := graph.New()
accessPackageId := "5b98f958-0dea-4a5b-836e-109dccbd530c"
assignment.SetAccessPackageId(&accessPackageId) 
schedule := graph.New()
	startDateTime := null
schedule.SetStartDateTime(&startDateTime) 
	stopDateTime := null
schedule.SetStopDateTime(&stopDateTime) 
	assignment.SetSchedule(schedule)
assignmentPolicyId := "c5f7847f-83a8-4315-a754-d94a6f39b875"
assignment.SetAssignmentPolicyId(&assignmentPolicyId) 
target := graph.New()
displayName := "Idris Ibrahim"
target.SetDisplayName(&displayName) 
email := "IdrisIbrahim@woodgrovebank.com"
target.SetEmail(&email) 
objectId := "21aceaba-fe13-4e3b-aa8c-4c588d5e7387"
target.SetObjectId(&objectId) 
subjectType := "user"
target.SetSubjectType(&subjectType) 
	assignment.SetTarget(target)
	requestBody.SetAssignment(assignment)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignmentRequests, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().Post(context.Background(), requestBody, nil)


```