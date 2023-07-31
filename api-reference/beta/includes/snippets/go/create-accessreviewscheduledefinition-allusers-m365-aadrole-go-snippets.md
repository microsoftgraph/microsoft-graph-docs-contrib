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


requestBody := graphmodels.NewAccessReviewScheduleDefinition()
displayName := "Review employee access to LinkedIn"
requestBody.SetDisplayName(&displayName) 
descriptionForAdmins := "Review employee access to LinkedIn"
requestBody.SetDescriptionForAdmins(&descriptionForAdmins) 
scope := graphmodels.NewPrincipalResourceMembershipsScope()


accessReviewScope := graphmodels.NewAccessReviewQueryScope()
query := "/users"
accessReviewScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewScope.SetQueryType(&queryType) 

principalScopes := []graphmodels.AccessReviewScopeable {
	accessReviewScope,
}
scope.SetPrincipalScopes(principalScopes)


accessReviewScope := graphmodels.NewAccessReviewQueryScope()
query := "/servicePrincipals/bae11f90-7d5d-46ba-9f55-8112b59d92ae"
accessReviewScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewScope.SetQueryType(&queryType) 

resourceScopes := []graphmodels.AccessReviewScopeable {
	accessReviewScope,
}
scope.SetResourceScopes(resourceScopes)
requestBody.SetScope(scope)


accessReviewReviewerScope := graphmodels.NewAccessReviewReviewerScope()
query := "./manager"
accessReviewReviewerScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewReviewerScope.SetQueryType(&queryType) 
queryRoot := "decisions"
accessReviewReviewerScope.SetQueryRoot(&queryRoot) 

reviewers := []graphmodels.accessReviewReviewerScopeable {
	accessReviewReviewerScope,
}
requestBody.SetReviewers(reviewers)


accessReviewReviewerScope := graphmodels.NewAccessReviewReviewerScope()
query := "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers"
accessReviewReviewerScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewReviewerScope.SetQueryType(&queryType) 

backupReviewers := []graphmodels.accessReviewReviewerScopeable {
	accessReviewReviewerScope,
}
requestBody.SetBackupReviewers(backupReviewers)


accessReviewReviewerScope := graphmodels.NewAccessReviewReviewerScope()
query := "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers"
accessReviewReviewerScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewReviewerScope.SetQueryType(&queryType) 

fallbackReviewers := []graphmodels.accessReviewReviewerScopeable {
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
defaultDecision := "Recommendation"
settings.SetDefaultDecision(&defaultDecision) 
instanceDurationInDays := int32(180)
settings.SetInstanceDurationInDays(&instanceDurationInDays) 
autoApplyDecisionsEnabled := true
settings.SetAutoApplyDecisionsEnabled(&autoApplyDecisionsEnabled) 
recommendationsEnabled := true
settings.SetRecommendationsEnabled(&recommendationsEnabled) 
recurrence := graphmodels.NewPatternedRecurrence()
pattern := graphmodels.NewRecurrencePattern()
type := graphmodels.ABSOLUTEMONTHLY_RECURRENCEPATTERNTYPE 
pattern.SetType(&type) 
interval := int32(6)
pattern.SetInterval(&interval) 
dayOfMonth := int32(0)
pattern.SetDayOfMonth(&dayOfMonth) 
recurrence.SetPattern(pattern)
range := graphmodels.NewRecurrenceRange()
type := graphmodels.NUMBERED_RECURRENCERANGETYPE 
range.SetType(&type) 
startDate := 2021-05-05
range.SetStartDate(&startDate) 
endDate := 2022-05-05
range.SetEndDate(&endDate) 
recurrence.SetRange(range)
settings.SetRecurrence(recurrence)
requestBody.SetSettings(settings)

result, err := graphClient.IdentityGovernance().AccessReviews().Definitions().Post(context.Background(), requestBody, nil)


```