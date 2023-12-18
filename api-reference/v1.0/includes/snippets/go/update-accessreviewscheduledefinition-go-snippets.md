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
id := "60860cdd-fb4d-4054-91ba-f75e04444aa6"
requestBody.SetId(&id) 
displayName := "Test world UPDATED NAME!"
requestBody.SetDisplayName(&displayName) 
descriptionForAdmins := "Test world"
requestBody.SetDescriptionForAdmins(&descriptionForAdmins) 
descriptionForReviewers := "Test world"
requestBody.SetDescriptionForReviewers(&descriptionForReviewers) 
scope := graphmodels.NewAccessReviewQueryScope()
query := "/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f/transitiveMembers"
scope.SetQuery(&query) 
queryType := "MicrosoftGraph"
scope.SetQueryType(&queryType) 
requestBody.SetScope(scope)
instanceEnumerationScope := graphmodels.NewAccessReviewQueryScope()
query := "/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f"
instanceEnumerationScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
instanceEnumerationScope.SetQueryType(&queryType) 
requestBody.SetInstanceEnumerationScope(instanceEnumerationScope)
reviewers := []graphmodels.AccessReviewReviewerScopeable {

}
requestBody.SetReviewers(reviewers)
settings := graphmodels.NewAccessReviewScheduleSettings()
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
instanceDurationInDays := int32(3)
settings.SetInstanceDurationInDays(&instanceDurationInDays) 
autoApplyDecisionsEnabled := false
settings.SetAutoApplyDecisionsEnabled(&autoApplyDecisionsEnabled) 
recommendationsEnabled := true
settings.SetRecommendationsEnabled(&recommendationsEnabled) 
recurrence := graphmodels.NewPatternedRecurrence()
pattern := graphmodels.NewRecurrencePattern()
type := graphmodels.WEEKLY_RECURRENCEPATTERNTYPE 
pattern.SetType(&type) 
interval := int32(1)
pattern.SetInterval(&interval) 
recurrence.SetPattern(pattern)
range := graphmodels.NewRecurrenceRange()
type := graphmodels.NOEND_RECURRENCERANGETYPE 
range.SetType(&type) 
startDate := 2020-09-15
range.SetStartDate(&startDate) 
recurrence.SetRange(range)
settings.SetRecurrence(recurrence)
requestBody.SetSettings(settings)

definitions, err := graphClient.IdentityGovernance().AccessReviews().Definitions().ByAccessReviewScheduleDefinitionId("accessReviewScheduleDefinition-id").Put(context.Background(), requestBody, nil)


```