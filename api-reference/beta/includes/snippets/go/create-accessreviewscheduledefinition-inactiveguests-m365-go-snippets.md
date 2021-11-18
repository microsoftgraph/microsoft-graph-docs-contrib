---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessReviewScheduleDefinition()
displayName := "Review inactive guests on teams"
requestBody.SetDisplayName(&displayName)
descriptionForAdmins := "Control guest user access to our teams."
requestBody.SetDescriptionForAdmins(&descriptionForAdmins)
descriptionForReviewers := "Information security is everyone's responsibility. Review our access policy for more."
requestBody.SetDescriptionForReviewers(&descriptionForReviewers)
instanceEnumerationScope := msgraphsdk.NewAccessReviewScope()
requestBody.SetInstanceEnumerationScope(instanceEnumerationScope)
instanceEnumerationScope.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.accessReviewQueryScope",
	"query": "/groups?$filter=(groupTypes/any(c:c+eq+'Unified') and resourceProvisioningOptions/Any(x:x eq 'Team')')",
	"queryType": "MicrosoftGraph",
}
scope := msgraphsdk.NewAccessReviewScope()
requestBody.SetScope(scope)
scope.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
	"query": "./members/microsoft.graph.user/?$filter=(userType eq 'Guest')",
	"queryType": "MicrosoftGraph",
	"inactiveDuration": "P30D",
}
requestBody.SetReviewers( []AccessReviewReviewerScope {
	msgraphsdk.NewAccessReviewReviewerScope(),
	SetAdditionalData(map[string]interface{}{
		"query": "./owners",
		"queryType": "MicrosoftGraph",
	}
}
requestBody.SetFallbackReviewers( []AccessReviewReviewerScope {
	msgraphsdk.NewAccessReviewReviewerScope(),
	SetAdditionalData(map[string]interface{}{
		"query": "/users/fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f",
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
recommendationsEnabled := true
settings.SetRecommendationsEnabled(&recommendationsEnabled)
instanceDurationInDays := int32(3)
settings.SetInstanceDurationInDays(&instanceDurationInDays)
recurrence := msgraphsdk.NewPatternedRecurrence()
settings.SetRecurrence(recurrence)
pattern := msgraphsdk.NewRecurrencePattern()
recurrence.SetPattern(pattern)
type := "absoluteMonthly"
pattern.SetType(&type)
dayOfMonth := int32(5)
pattern.SetDayOfMonth(&dayOfMonth)
interval := int32(3)
pattern.SetInterval(&interval)
range := msgraphsdk.NewRecurrenceRange()
recurrence.SetRange(range)
type := "noEnd"
range.SetType(&type)
startDate := "2020-05-04T00:00:00.000Z"
range.SetStartDate(&startDate)
defaultDecisionEnabled := true
settings.SetDefaultDecisionEnabled(&defaultDecisionEnabled)
defaultDecision := "Deny"
settings.SetDefaultDecision(&defaultDecision)
autoApplyDecisionsEnabled := true
settings.SetAutoApplyDecisionsEnabled(&autoApplyDecisionsEnabled)
options := &msgraphsdk.DefinitionsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.IdentityGovernance().AccessReviews().Definitions().Post(options)


```