---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAccessReviewScheduleDefinition()
displayName := "Review employee access to LinkedIn"
requestBody.SetDisplayName(&displayName)
descriptionForAdmins := "Review employee access to LinkedIn"
requestBody.SetDescriptionForAdmins(&descriptionForAdmins)
scope := msgraphsdk.NewAccessReviewScope()
requestBody.SetScope(scope)
scope.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
	"principalScopes":  []Object {
	}
	"resourceScopes":  []Object {
	}
}
requestBody.SetReviewers( []AccessReviewReviewerScope {
	msgraphsdk.NewAccessReviewReviewerScope(),
	SetAdditionalData(map[string]interface{}{
		"query": "./manager",
		"queryType": "MicrosoftGraph",
		"queryRoot": "decisions",
	}
}
requestBody.SetFallbackReviewers( []AccessReviewReviewerScope {
	msgraphsdk.NewAccessReviewReviewerScope(),
	SetAdditionalData(map[string]interface{}{
		"query": "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers",
		"queryType": "MicrosoftGraph",
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
defaultDecisionEnabled := true
settings.SetDefaultDecisionEnabled(&defaultDecisionEnabled)
defaultDecision := "Recommendation"
settings.SetDefaultDecision(&defaultDecision)
instanceDurationInDays := int32(180)
settings.SetInstanceDurationInDays(&instanceDurationInDays)
autoApplyDecisionsEnabled := true
settings.SetAutoApplyDecisionsEnabled(&autoApplyDecisionsEnabled)
recommendationsEnabled := true
settings.SetRecommendationsEnabled(&recommendationsEnabled)
recurrence := msgraphsdk.NewPatternedRecurrence()
settings.SetRecurrence(recurrence)
pattern := msgraphsdk.NewRecurrencePattern()
recurrence.SetPattern(pattern)
type := "absoluteMonthly"
pattern.SetType(&type)
interval := int32(6)
pattern.SetInterval(&interval)
dayOfMonth := int32(0)
pattern.SetDayOfMonth(&dayOfMonth)
range := msgraphsdk.NewRecurrenceRange()
recurrence.SetRange(range)
type := "numbered"
range.SetType(&type)
startDate := "2021-05-05"
range.SetStartDate(&startDate)
endDate := "2022-05-05"
range.SetEndDate(&endDate)
requestBody.SetAdditionalData(map[string]interface{}{
	"backupReviewers":  []Object {
	}
}
options := &msgraphsdk.DefinitionsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.IdentityGovernance().AccessReviews().Definitions().Post(options)


```