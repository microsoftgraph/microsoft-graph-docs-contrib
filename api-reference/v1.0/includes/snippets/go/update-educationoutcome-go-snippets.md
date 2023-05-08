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


 := graphmodels.New()
qualityId := "9a145aa8-f3d9-43a1-8f77-5387ff0693f2"
.SetQualityId(&qualityId) 
feedback := graphmodels.New()
content := "This is feedback specific to the first quality of the rubric."
feedback.SetContent(&content) 
contentType := "text"
feedback.SetContentType(&contentType) 
.SetFeedback(feedback)
 := graphmodels.New()
qualityId := "d2331fb2-2761-402e-8de6-93e0afaa076e"
.SetQualityId(&qualityId) 
feedback := graphmodels.New()
content := "This is feedback specific to the second quality of the rubric."
feedback.SetContent(&content) 
contentType := "text"
feedback.SetContentType(&contentType) 
.SetFeedback(feedback)

	rubricQualityFeedback := []graphmodels.Objectable {
		,
		,

	}


 := graphmodels.New()
qualityId := "9a145aa8-f3d9-43a1-8f77-5387ff0693f2"
.SetQualityId(&qualityId) 
columnId := "4fb17a1d-5681-46c2-a295-4e305c3eae23"
.SetColumnId(&columnId) 
 := graphmodels.New()
qualityId := "d2331fb2-2761-402e-8de6-93e0afaa076e"
.SetQualityId(&qualityId) 
columnId := "aac076bf-51ba-48c5-a2e0-ee235b0b9740"
.SetColumnId(&columnId) 

	rubricQualitySelectedLevels := []graphmodels.Objectable {
		,
		,

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Education().Classes().ByClasseId("educationClass-id").Assignments().ByAssignmentId("educationAssignment-id").Submissions().BySubmissionId("educationSubmission-id").Outcomes().ByOutcomeId("educationOutcome-id").Patch(context.Background(), requestBody, nil)


```