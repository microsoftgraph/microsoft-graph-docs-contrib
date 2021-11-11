---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAccessReview()
displayName := "TestReview"
requestBody.SetDisplayName(&displayName)
startDateTime, err := time.Parse(time.RFC3339, "2017-02-10T00:35:53.214Z")
requestBody.SetStartDateTime(&startDateTime)
endDateTime, err := time.Parse(time.RFC3339, "2017-03-12T00:35:53.214Z")
requestBody.SetEndDateTime(&endDateTime)
reviewedEntity := msgraphsdk.NewIdentity()
requestBody.SetReviewedEntity(reviewedEntity)
id := "99025615-a0b1-47ec-9117-35377b10998b"
reviewedEntity.SetId(&id)
reviewerType := "delegated"
requestBody.SetReviewerType(&reviewerType)
businessFlowTemplateId := "6e4f3d20-c5c3-407f-9695-8460952bcc68"
requestBody.SetBusinessFlowTemplateId(&businessFlowTemplateId)
description := "Sample description"
requestBody.SetDescription(&description)
requestBody.SetReviewers( []AccessReviewReviewer {
	msgraphsdk.NewAccessReviewReviewer(),
	SetAdditionalData(map[string]interface{}{
		"id": "f260246a-09b1-4fd5-8d18-daed736071ec",
	}
	msgraphsdk.NewAccessReviewReviewer(),
	SetAdditionalData(map[string]interface{}{
		"id": "5a4e184c-4ee5-4883-96e9-b371f8da88e3",
	}
}
settings := msgraphsdk.NewAccessReviewSettings()
requestBody.SetSettings(settings)
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
recurrenceSettings := msgraphsdk.NewAccessReviewRecurrenceSettings()
settings.SetRecurrenceSettings(recurrenceSettings)
recurrenceType := "onetime"
recurrenceSettings.SetRecurrenceType(&recurrenceType)
recurrenceEndType := "endBy"
recurrenceSettings.SetRecurrenceEndType(&recurrenceEndType)
durationInDays := int32(0)
recurrenceSettings.SetDurationInDays(&durationInDays)
recurrenceCount := int32(0)
recurrenceSettings.SetRecurrenceCount(&recurrenceCount)
autoReviewSettings := msgraphsdk.NewAutoReviewSettings()
settings.SetAutoReviewSettings(autoReviewSettings)
notReviewedResult := "Deny"
autoReviewSettings.SetNotReviewedResult(&notReviewedResult)
options := &msgraphsdk.AccessReviewsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.AccessReviews().Post(options)


```