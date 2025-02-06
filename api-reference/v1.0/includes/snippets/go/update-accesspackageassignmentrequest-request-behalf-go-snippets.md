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
assignment := graphmodels.NewAccessPackageAssignment()
schedule := graphmodels.NewEntitlementManagementSchedule()
startDateTime := null
schedule.SetStartDateTime(&startDateTime) 
additionalData := map[string]interface{}{
	stopDateTime := null
schedule.SetStopDateTime(&stopDateTime) 
}
schedule.SetAdditionalData(additionalData)
assignment.SetSchedule(schedule)
target := graphmodels.NewAccessPackageSubject()
displayName := "Idris Ibrahim"
target.SetDisplayName(&displayName) 
email := "IdrisIbrahim@woodgrovebank.com"
target.SetEmail(&email) 
objectId := "21aceaba-fe13-4e3b-aa8c-4c588d5e7387"
target.SetObjectId(&objectId) 
subjectType := graphmodels.USER_ACCESSPACKAGESUBJECTTYPE 
target.SetSubjectType(&subjectType) 
assignment.SetTarget(target)
additionalData := map[string]interface{}{
	"accessPackageId" : "5b98f958-0dea-4a5b-836e-109dccbd530c", 
	"assignmentPolicyId" : "c5f7847f-83a8-4315-a754-d94a6f39b875", 
}
assignment.SetAdditionalData(additionalData)
requestBody.SetAssignment(assignment)
requestType := graphmodels.USERADD_ACCESSPACKAGEREQUESTTYPE 
requestBody.SetRequestType(&requestType) 
answers := []graphmodels.AccessPackageAnswerable {

}
requestBody.SetAnswers(answers)
additionalData := map[string]interface{}{
	"justification" : "Access for direct employee", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignmentRequests, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().Post(context.Background(), requestBody, nil)


```