---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessReviewScheduleDefinition()
displayName := "Test create"
requestBody.SetDisplayName(&displayName) 
descriptionForAdmins := "New scheduled access review"
requestBody.SetDescriptionForAdmins(&descriptionForAdmins) 
descriptionForReviewers := "If you have any questions, contact jerry@contoso.com"
requestBody.SetDescriptionForReviewers(&descriptionForReviewers) 
scope := graphmodels.NewAccessReviewScope()
additionalData := map[string]interface{}{
	"query" : "/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers", 
	"queryType" : "MicrosoftGraph", 
}
scope.SetAdditionalData(additionalData)
requestBody.SetScope(scope)


accessReviewReviewerScope := graphmodels.NewAccessReviewReviewerScope()
query := "/users/398164b1-5196-49dd-ada2-364b49f99b27"
accessReviewReviewerScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewReviewerScope.SetQueryType(&queryType) 

reviewers := []graphmodels.Objectable {
	accessReviewReviewerScope,

}
requestBody.SetReviewers(reviewers)
settings := graphmodels.NewAccessReviewScheduleSettings()
instanceDurationInDays := int32(1)
settings.SetInstanceDurationInDays(&instanceDurationInDays) 
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
startDate := 2020-09-08T12:02:30.667Z
range.SetStartDate(&startDate) 
recurrence.SetRange(range)
settings.SetRecurrence(recurrence)


accessReviewRecommendationInsightSetting := graphmodels.NewAccessReviewRecommendationInsightSetting()
additionalData := map[string]interface{}{
	"recommendationLookBackDuration" : "P30D", 
	"signInScope" : "tenant", 
}
accessReviewRecommendationInsightSetting.SetAdditionalData(additionalData)
accessReviewRecommendationInsightSetting1 := graphmodels.NewAccessReviewRecommendationInsightSetting()

recommendationInsightSettings := []graphmodels.AccessReviewRecommendationInsightSettingable {
	accessReviewRecommendationInsightSetting,
	accessReviewRecommendationInsightSetting1,

}
settings.SetRecommendationInsightSettings(recommendationInsightSettings)
requestBody.SetSettings(settings)

result, err := graphClient.IdentityGovernance().AccessReviews().Definitions().Post(context.Background(), requestBody, nil)


```