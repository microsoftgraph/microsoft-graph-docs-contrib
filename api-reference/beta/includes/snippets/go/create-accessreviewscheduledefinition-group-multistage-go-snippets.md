---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessReviewScheduleDefinition()
displayName := "Group Multi-stage Access Review"
requestBody.SetDisplayName(&displayName)
descriptionForAdmins := "New scheduled access review"
requestBody.SetDescriptionForAdmins(&descriptionForAdmins)
descriptionForReviewers := "If you have any questions, contact jerry@contoso.com"
requestBody.SetDescriptionForReviewers(&descriptionForReviewers)
scope := msgraphsdk.NewAccessReviewScope()
requestBody.SetScope(scope)
scope.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.accessReviewQueryScope",
	"query": "/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers",
	"queryType": "MicrosoftGraph",
}
requestBody.SetStageSettings( []AccessReviewStageSettings {
	msgraphsdk.NewAccessReviewStageSettings(),
stageId := "1"
	SetStageId(&stageId)
durationInDays := int32(2)
	SetDurationInDays(&durationInDays)
recommendationsEnabled := false
	SetRecommendationsEnabled(&recommendationsEnabled)
	SetDecisionsThatWillMoveToNextStage( []String {
		"NotReviewed",
		"Approve",
	}
	SetReviewers( []AccessReviewReviewerScope {
		msgraphsdk.NewAccessReviewReviewerScope(),
		SetAdditionalData(map[string]interface{}{
			"query": "/users/398164b1-5196-49dd-ada2-364b49f99b27",
			"queryType": "MicrosoftGraph",
		}
	}
	msgraphsdk.NewAccessReviewStageSettings(),
stageId := "2"
	SetStageId(&stageId)
	SetDependsOn( []String {
		"1",
	}
durationInDays := int32(2)
	SetDurationInDays(&durationInDays)
recommendationsEnabled := true
	SetRecommendationsEnabled(&recommendationsEnabled)
	SetReviewers( []AccessReviewReviewerScope {
		msgraphsdk.NewAccessReviewReviewerScope(),
		SetAdditionalData(map[string]interface{}{
			"query": "./manager",
			"queryType": "MicrosoftGraph",
			"queryRoot": "decisions",
		}
	}
	SetFallbackReviewers( []AccessReviewReviewerScope {
		msgraphsdk.NewAccessReviewReviewerScope(),
		SetAdditionalData(map[string]interface{}{
			"query": "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers",
			"queryType": "MicrosoftGraph",
		}
	}
}
settings := msgraphsdk.NewAccessReviewScheduleSettings()
requestBody.SetSettings(settings)
mailNotificationsEnabled := true
settings.SetMailNotificationsEnabled(&mailNotificationsEnabled)
reminderNotificationsEnabled := true
settings.SetReminderNotificationsEnabled(&reminderNotificationsEnabled)
justificationRequiredOnApproval := true
settings.SetJustificationRequiredOnApproval(&justificationRequiredOnApproval)
defaultDecisionEnabled := false
settings.SetDefaultDecisionEnabled(&defaultDecisionEnabled)
defaultDecision := "None"
settings.SetDefaultDecision(&defaultDecision)
instanceDurationInDays := int32(4)
settings.SetInstanceDurationInDays(&instanceDurationInDays)
recurrence := msgraphsdk.NewPatternedRecurrence()
settings.SetRecurrence(recurrence)
pattern := msgraphsdk.NewRecurrencePattern()
recurrence.SetPattern(pattern)
type := "weekly"
pattern.SetType(&type)
interval := int32(1)
pattern.SetInterval(&interval)
range := msgraphsdk.NewRecurrenceRange()
recurrence.SetRange(range)
type := "noEnd"
range.SetType(&type)
startDate := "2020-09-08T12:02:30.667Z"
range.SetStartDate(&startDate)
decisionHistoriesForReviewersEnabled := true
settings.SetDecisionHistoriesForReviewersEnabled(&decisionHistoriesForReviewersEnabled)
result, err := graphClient.IdentityGovernance().AccessReviews().Definitions().Post(requestBody)


```