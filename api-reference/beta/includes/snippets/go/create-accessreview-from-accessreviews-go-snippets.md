---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessReview()
displayName := "TestReview"
requestBody.SetDisplayName(&displayName) 
startDateTime , err := time.Parse(time.RFC3339, "2017-02-10T00:35:53.214Z")
requestBody.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2017-03-12T00:35:53.214Z")
requestBody.SetEndDateTime(&endDateTime) 
reviewedEntity := graphmodels.NewIdentity()
id := "99025615-a0b1-47ec-9117-35377b10998b"
reviewedEntity.SetId(&id) 
requestBody.SetReviewedEntity(reviewedEntity)
reviewerType := "delegated"
requestBody.SetReviewerType(&reviewerType) 
businessFlowTemplateId := "6e4f3d20-c5c3-407f-9695-8460952bcc68"
requestBody.SetBusinessFlowTemplateId(&businessFlowTemplateId) 
description := "Sample description"
requestBody.SetDescription(&description) 


accessReviewReviewer := graphmodels.NewAccessReviewReviewer()
id := "f260246a-09b1-4fd5-8d18-daed736071ec"
accessReviewReviewer.SetId(&id) 
accessReviewReviewer1 := graphmodels.NewAccessReviewReviewer()
id := "5a4e184c-4ee5-4883-96e9-b371f8da88e3"
accessReviewReviewer1.SetId(&id) 

reviewers := []graphmodels.AccessReviewReviewerable {
	accessReviewReviewer,
	accessReviewReviewer1,

}
requestBody.SetReviewers(reviewers)
settings := graphmodels.NewAccessReviewSettings()
mailNotificationsEnabled := true
settings.SetMailNotificationsEnabled(&mailNotificationsEnabled) 
remindersEnabled := true
settings.SetRemindersEnabled(&remindersEnabled) 
justificationRequiredOnApproval := true
settings.SetJustificationRequiredOnApproval(&justificationRequiredOnApproval) 
autoReviewEnabled := false
settings.SetAutoReviewEnabled(&autoReviewEnabled) 
activityDurationInDays := int32(30)
settings.SetActivityDurationInDays(&activityDurationInDays) 
autoApplyReviewResultsEnabled := false
settings.SetAutoApplyReviewResultsEnabled(&autoApplyReviewResultsEnabled) 
accessRecommendationsEnabled := false
settings.SetAccessRecommendationsEnabled(&accessRecommendationsEnabled) 
recurrenceSettings := graphmodels.NewAccessReviewRecurrenceSettings()
recurrenceType := "onetime"
recurrenceSettings.SetRecurrenceType(&recurrenceType) 
recurrenceEndType := "endBy"
recurrenceSettings.SetRecurrenceEndType(&recurrenceEndType) 
durationInDays := int32(0)
recurrenceSettings.SetDurationInDays(&durationInDays) 
recurrenceCount := int32(0)
recurrenceSettings.SetRecurrenceCount(&recurrenceCount) 
settings.SetRecurrenceSettings(recurrenceSettings)
autoReviewSettings := graphmodels.NewAutoReviewSettings()
notReviewedResult := "Deny"
autoReviewSettings.SetNotReviewedResult(&notReviewedResult) 
settings.SetAutoReviewSettings(autoReviewSettings)
requestBody.SetSettings(settings)

result, err := graphClient.AccessReviews().Post(context.Background(), requestBody, nil)


```