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


rubricQualityFeedbackModel := graphmodels.NewRubricQualityFeedbackModel()
qualityId := "9a145aa8-f3d9-43a1-8f77-5387ff0693f2"
rubricQualityFeedbackModel.SetQualityId(&qualityId) 
feedback := graphmodels.NewEducationItemBody()
content := "This is feedback specific to the first quality of the rubric."
feedback.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
feedback.SetContentType(&contentType) 
rubricQualityFeedbackModel.SetFeedback(feedback)
rubricQualityFeedbackModel1 := graphmodels.NewRubricQualityFeedbackModel()
qualityId := "d2331fb2-2761-402e-8de6-93e0afaa076e"
rubricQualityFeedbackModel1.SetQualityId(&qualityId) 
feedback := graphmodels.NewEducationItemBody()
content := "This is feedback specific to the second quality of the rubric."
feedback.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
feedback.SetContentType(&contentType) 
rubricQualityFeedbackModel1.SetFeedback(feedback)

rubricQualityFeedback := []graphmodels.RubricQualityFeedbackModelable {
	rubricQualityFeedbackModel,
	rubricQualityFeedbackModel1,
}
requestBody.SetRubricQualityFeedback(rubricQualityFeedback)


rubricQualitySelectedColumnModel := graphmodels.NewRubricQualitySelectedColumnModel()
qualityId := "9a145aa8-f3d9-43a1-8f77-5387ff0693f2"
rubricQualitySelectedColumnModel.SetQualityId(&qualityId) 
columnId := "4fb17a1d-5681-46c2-a295-4e305c3eae23"
rubricQualitySelectedColumnModel.SetColumnId(&columnId) 
rubricQualitySelectedColumnModel1 := graphmodels.NewRubricQualitySelectedColumnModel()
qualityId := "d2331fb2-2761-402e-8de6-93e0afaa076e"
rubricQualitySelectedColumnModel1.SetQualityId(&qualityId) 
columnId := "aac076bf-51ba-48c5-a2e0-ee235b0b9740"
rubricQualitySelectedColumnModel1.SetColumnId(&columnId) 

rubricQualitySelectedLevels := []graphmodels.RubricQualitySelectedColumnModelable {
	rubricQualitySelectedColumnModel,
	rubricQualitySelectedColumnModel1,
}
requestBody.SetRubricQualitySelectedLevels(rubricQualitySelectedLevels)

outcomes, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Submissions().ByEducationSubmissionId("educationSubmission-id").Outcomes().ByEducationOutcomeId("educationOutcome-id").Patch(context.Background(), requestBody, nil)


```