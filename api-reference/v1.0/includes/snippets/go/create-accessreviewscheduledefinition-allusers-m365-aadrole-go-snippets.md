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
displayName := "Review employee access to LinkedIn"
requestBody.SetDisplayName(&displayName) 
descriptionForAdmins := "Review employee access to LinkedIn"
requestBody.SetDescriptionForAdmins(&descriptionForAdmins) 
scope := graphmodels.NewAccessReviewScope()
additionalData := map[string]interface{}{


 := graphmodels.New()
query := "/users"
.SetQuery(&query) 
queryType := "MicrosoftGraph"
.SetQueryType(&queryType) 

	principalScopes := []graphmodels.Objectable {
		,

	}


 := graphmodels.New()
query := "/servicePrincipals/bae11f90-7d5d-46ba-9f55-8112b59d92ae"
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
query := "./manager"
accessReviewReviewerScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewReviewerScope.SetQueryType(&queryType) 
queryRoot := "decisions"
accessReviewReviewerScope.SetQueryRoot(&queryRoot) 

reviewers := []graphmodels.AccessReviewReviewerScopeable {
	accessReviewReviewerScope,

}
requestBody.SetReviewers(reviewers)


accessReviewReviewerScope := graphmodels.NewAccessReviewReviewerScope()
query := "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers"
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
additionalData := map[string]interface{}{


 := graphmodels.New()
query := "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers"
.SetQuery(&query) 
queryType := "MicrosoftGraph"
.SetQueryType(&queryType) 

	backupReviewers := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.IdentityGovernance().AccessReviews().Definitions().Post(context.Background(), requestBody, nil)


```