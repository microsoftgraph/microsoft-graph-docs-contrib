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


requestBody := graphmodels.NewEducationOutcome()
feedback := graphmodels.NewEducationFeedback()
text := graphmodels.NewEducationItemBody()
content := "This is feedback for the assignment as a whole."
text.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
text.SetContentType(&contentType) 
feedback.SetText(text)
requestBody.SetFeedback(feedback)

outcomes, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Submissions().ByEducationSubmissionId("educationSubmission-id").Outcomes().ByEducationOutcomeId("educationOutcome-id").Patch(context.Background(), requestBody, nil)


```