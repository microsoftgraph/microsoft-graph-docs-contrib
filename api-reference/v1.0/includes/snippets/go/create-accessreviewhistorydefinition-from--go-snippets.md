---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessReviewHistoryDefinition()
displayName := "Last quarter's group reviews April 2021"
requestBody.SetDisplayName(&displayName) 
decisions := []graphmodels.AccessReviewHistoryDecisionFilterable {
	"approve",
	"deny",
	"dontKnow",
	"notReviewed",
	"notNotified",

}
requestBody.SetDecisions(decisions)
scheduleSettings := graphmodels.NewAccessReviewHistoryScheduleSettings()
reportRange := "P1M"
scheduleSettings.SetReportRange(&reportRange) 
recurrence := graphmodels.NewPatternedRecurrence()
pattern := graphmodels.NewRecurrencePattern()
type := graphmodels.MONTHLY_RECURRENCEPATTERNTYPE 
pattern.SetType(&type) 
interval := int32(1)
pattern.SetInterval(&interval) 
recurrence.SetPattern(pattern)
range := graphmodels.NewRecurrenceRange()
type := graphmodels.NOEND_RECURRENCERANGETYPE 
range.SetType(&type) 
startDate := "2018-08-03T21:02:30.667Z"
range.SetStartDate(&startDate) 
additionalData := map[string]interface{}{
	"count" : int32(0) , 
}
range.SetAdditionalData(additionalData)
recurrence.SetRange(range)
scheduleSettings.SetRecurrence(recurrence)
requestBody.SetScheduleSettings(scheduleSettings)


accessReviewScope := graphmodels.NewAccessReviewScope()
additionalData := map[string]interface{}{
	"queryType" : "MicrosoftGraph", 
	"query" : "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')", 
	queryRoot := null
accessReviewScope.SetQueryRoot(&queryRoot) 
}
accessReviewScope.SetAdditionalData(additionalData)
accessReviewScope1 := graphmodels.NewAccessReviewScope()
additionalData := map[string]interface{}{
	"queryType" : "MicrosoftGraph", 
	"query" : "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')", 
	queryRoot := null
accessReviewScope1.SetQueryRoot(&queryRoot) 
}
accessReviewScope1.SetAdditionalData(additionalData)

scopes := []graphmodels.AccessReviewScopeable {
	accessReviewScope,
	accessReviewScope1,

}
requestBody.SetScopes(scopes)

result, err := graphClient.IdentityGovernance().AccessReviews().HistoryDefinitions().Post(requestBody)


```