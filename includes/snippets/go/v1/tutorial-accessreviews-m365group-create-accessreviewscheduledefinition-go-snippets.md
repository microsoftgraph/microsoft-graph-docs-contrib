---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessReviewScheduleDefinition()
displayName := "Guest access to marketing group"
requestBody.SetDisplayName(&displayName) 
scope := graphmodels.NewAccessReviewQueryScope()
query := "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')"
scope.SetQuery(&query) 
queryType := "MicrosoftGraph"
scope.SetQueryType(&queryType) 
requestBody.SetScope(scope)
instanceEnumerationScope := graphmodels.NewAccessReviewQueryScope()
query := "/v1.0/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true"
instanceEnumerationScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
instanceEnumerationScope.SetQueryType(&queryType) 
queryRoot := null
instanceEnumerationScope.SetQueryRoot(&queryRoot) 
requestBody.SetInstanceEnumerationScope(instanceEnumerationScope)


accessReviewReviewerScope := graphmodels.NewAccessReviewReviewerScope()
query := "./owners"
accessReviewReviewerScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewReviewerScope.SetQueryType(&queryType) 
queryRoot := null
accessReviewReviewerScope.SetQueryRoot(&queryRoot) 

reviewers := []graphmodels.AccessReviewReviewerScopeable {
	accessReviewReviewerScope,
}
requestBody.SetReviewers(reviewers)


accessReviewReviewerScope := graphmodels.NewAccessReviewReviewerScope()
query := "/users/c9a5aff7-9298-4d71-adab-0a222e0a05e4"
accessReviewReviewerScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewReviewerScope.SetQueryType(&queryType) 

fallbackReviewers := []graphmodels.AccessReviewReviewerScopeable {
	accessReviewReviewerScope,
}
requestBody.SetFallbackReviewers(fallbackReviewers)
settings := graphmodels.NewAccessReviewScheduleSettings()
mailNotificationsEnabled := true
settings.SetMailNotificationsEnabled(&mailNotificationsEnabled) 
reminderNotificationsEnabled := true
settings.SetReminderNotificationsEnabled(&reminderNotificationsEnabled) 
justificationRequiredOnApproval := true
settings.SetJustificationRequiredOnApproval(&justificationRequiredOnApproval) 
defaultDecisionEnabled := true
settings.SetDefaultDecisionEnabled(&defaultDecisionEnabled) 
defaultDecision := "Deny"
settings.SetDefaultDecision(&defaultDecision) 
instanceDurationInDays := int32(3)
settings.SetInstanceDurationInDays(&instanceDurationInDays) 
autoApplyDecisionsEnabled := true
settings.SetAutoApplyDecisionsEnabled(&autoApplyDecisionsEnabled) 
recommendationsEnabled := true
settings.SetRecommendationsEnabled(&recommendationsEnabled) 
recommendationLookBackDuration , err := abstractions.ParseISODuration("P30D")
settings.SetRecommendationLookBackDuration(&recommendationLookBackDuration) 
decisionHistoriesForReviewersEnabled := false
settings.SetDecisionHistoriesForReviewersEnabled(&decisionHistoriesForReviewersEnabled) 
recurrence := graphmodels.NewPatternedRecurrence()
pattern := graphmodels.NewRecurrencePattern()
type := graphmodels.ABSOLUTEMONTHLY_RECURRENCEPATTERNTYPE 
pattern.SetType(&type) 
interval := int32(3)
pattern.SetInterval(&interval) 
month := int32(0)
pattern.SetMonth(&month) 
dayOfMonth := int32(0)
pattern.SetDayOfMonth(&dayOfMonth) 
daysOfWeek := []graphmodels.DayOfWeekable {

}
pattern.SetDaysOfWeek(daysOfWeek)
firstDayOfWeek := graphmodels.SUNDAY_DAYOFWEEK 
pattern.SetFirstDayOfWeek(&firstDayOfWeek) 
index := graphmodels.FIRST_WEEKINDEX 
pattern.SetIndex(&index) 
recurrence.SetPattern(pattern)
range := graphmodels.NewRecurrenceRange()
type := graphmodels.ENDDATE_RECURRENCERANGETYPE 
range.SetType(&type) 
numberOfOccurrences := int32(0)
range.SetNumberOfOccurrences(&numberOfOccurrences) 
recurrenceTimeZone := null
range.SetRecurrenceTimeZone(&recurrenceTimeZone) 
startDate := 2024-03-21
range.SetStartDate(&startDate) 
endDate := 2025-03-21
range.SetEndDate(&endDate) 
recurrence.SetRange(range)
settings.SetRecurrence(recurrence)


accessReviewApplyAction := graphmodels.NewRemoveAccessApplyAction()

applyActions := []graphmodels.AccessReviewApplyActionable {
	accessReviewApplyAction,
}
settings.SetApplyActions(applyActions)
requestBody.SetSettings(settings)

definitions, err := graphClient.IdentityGovernance().AccessReviews().Definitions().Post(context.Background(), requestBody, nil)


```