---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessReviewScheduleDefinition()
displayName := "Review access of users and groups to privileged roles"
requestBody.SetDisplayName(&displayName) 
descriptionForAdmins := "Review access of users and groups to privileged roles"
requestBody.SetDescriptionForAdmins(&descriptionForAdmins) 
scope := graphmodels.NewAccessReviewScope()
additionalData := map[string]interface{}{


 := graphmodels.New()
query := "/users"
.SetQuery(&query) 
queryType := "MicrosoftGraph"
.SetQueryType(&queryType) 
 := graphmodels.New()
query := "/groups"
.SetQuery(&query) 
queryType := "MicrosoftGraph"
.SetQueryType(&queryType) 

	principalScopes := []graphmodels.Objectable {
		,
		,

	}


 := graphmodels.New()
query := "/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1"
.SetQuery(&query) 
queryType := "MicrosoftGraph"
.SetQueryType(&queryType) 

	resourceScopes := []graphmodels.Objectable {
		,

	}
}
scope.SetAdditionalData(additionalData)
requestBody.SetScope(scope)


accessReviewReviewerScope := graphmodels.NewAccessReviewReviewerScope()
query := "/users/f674a1c9-4a40-439c-bfa3-4b61a9f29d85"
accessReviewReviewerScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewReviewerScope.SetQueryType(&queryType) 

reviewers := []graphmodels.AccessReviewReviewerScopeable {
	accessReviewReviewerScope,

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
recommendationsEnabled := false
settings.SetRecommendationsEnabled(&recommendationsEnabled) 
recurrence := graphmodels.NewPatternedRecurrence()
pattern := graphmodels.NewRecurrencePattern()
type := graphmodels.ABSOLUTEMONTHLY_RECURRENCEPATTERNTYPE 
pattern.SetType(&type) 
interval := int32(3)
pattern.SetInterval(&interval) 
recurrence.SetPattern(pattern)
range := graphmodels.NewRecurrenceRange()
type := graphmodels.NOEND_RECURRENCERANGETYPE 
range.SetType(&type) 
startDate := 2022-03-02
range.SetStartDate(&startDate) 
recurrence.SetRange(range)
settings.SetRecurrence(recurrence)
requestBody.SetSettings(settings)

result, err := graphClient.IdentityGovernance().AccessReviews().Definitions().Post(context.Background(), requestBody, nil)


```