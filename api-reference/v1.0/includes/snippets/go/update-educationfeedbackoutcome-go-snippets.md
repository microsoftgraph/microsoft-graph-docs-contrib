---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEducationOutcome()
additionalData := map[string]interface{}{
feedback := graphmodels.New()
text := graphmodels.New()
content := "This is feedback for the assignment as a whole."
text.SetContent(&content) 
contentType := "text"
text.SetContentType(&contentType) 
	feedback.SetText(text)
	requestBody.SetFeedback(feedback)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Education().Classes().ByClasseId("educationClass-id").Assignments().ByAssignmentId("educationAssignment-id").Submissions().BySubmissionId("educationSubmission-id").Outcomes().ByOutcomeId("educationOutcome-id").Patch(context.Background(), requestBody, nil)


```