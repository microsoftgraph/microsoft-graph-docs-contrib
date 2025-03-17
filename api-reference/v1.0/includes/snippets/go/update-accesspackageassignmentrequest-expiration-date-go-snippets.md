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
requestType := graphmodels.ADMINUPDATE_ACCESSPACKAGEREQUESTTYPE 
requestBody.SetRequestType(&requestType) 
schedule := graphmodels.NewEntitlementManagementSchedule()
startDateTime , err := time.Parse(time.RFC3339, "2023-05-23T20:04:02.39Z")
schedule.SetStartDateTime(&startDateTime) 
recurrence := null
schedule.SetRecurrence(&recurrence) 
expiration := graphmodels.NewExpirationPattern()
endDateTime , err := time.Parse(time.RFC3339, "2024-07-01T00:00:00.00Z")
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