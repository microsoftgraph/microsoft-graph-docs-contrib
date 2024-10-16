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
requestType := graphmodels.USERUPDATE_ACCESSPACKAGEREQUESTTYPE 
requestBody.SetRequestType(&requestType) 


accessPackageAnswer := graphmodels.NewAccessPackageAnswerString()
value := "My updated answer."
accessPackageAnswer.SetValue(&value) 
answeredQuestion := graphmodels.NewAccessPackageTextInputQuestion()
id := "0d31cc60-968e-4f92-955b-443fed03d6f6"
answeredQuestion.SetId(&id) 
accessPackageAnswer.SetAnsweredQuestion(answeredQuestion)

answers := []graphmodels.AccessPackageAnswerable {
	accessPackageAnswer,
}
requestBody.SetAnswers(answers)
schedule := graphmodels.NewEntitlementManagementSchedule()
startDateTime , err := time.Parse(time.RFC3339, "2024-09-18T20:49:16.17Z")
schedule.SetStartDateTime(&startDateTime) 
recurrence := null
schedule.SetRecurrence(&recurrence) 
expiration := graphmodels.NewExpirationPattern()
endDateTime , err := time.Parse(time.RFC3339, "2024-10-18T20:49:15.17Z")
expiration.SetEndDateTime(&endDateTime) 
duration := null
expiration.SetDuration(&duration) 
type := graphmodels.AFTERDATETIME_EXPIRATIONPATTERNTYPE 
expiration.SetType(&type) 
schedule.SetExpiration(expiration)
requestBody.SetSchedule(schedule)
assignment := graphmodels.NewAccessPackageAssignment()
id := "329f8dac-8062-4c1b-a9b8-39b7132f9bff"
assignment.SetId(&id) 
requestBody.SetAssignment(assignment)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignmentRequests, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().Post(context.Background(), requestBody, nil)


```