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

requestBody := graphmodels.NewEducationOutcome()
feedback := graphmodels.NewEducationFeedback()
text := graphmodels.NewEducationItemBody()
content := "This is feedback for the assignment as a whole."
text.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
text.SetContentType(&contentType) 
feedback.SetText(text)
requestBody.SetFeedback(feedback)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
outcomes, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Submissions().ByEducationSubmissionId("educationSubmission-id").Outcomes().ByEducationOutcomeId("educationOutcome-id").Patch(context.Background(), requestBody, nil)


```