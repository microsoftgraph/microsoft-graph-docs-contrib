---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/IdentityGovernance/AccessReviews/Definitions/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDefinition()
additionalData := map[string]interface{}{
	"id" : "60860cdd-fb4d-4054-91ba-f75e04444aa6", 
	"displayName" : "Test world UPDATED NAME!", 
	"descriptionForAdmins" : "Test world", 
	"descriptionForReviewers" : "Test world", 
scope := graphmodels.New()
query := "/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f/transitiveMembers"
scope.SetQuery(&query) 
queryType := "MicrosoftGraph"
scope.SetQueryType(&queryType) 
	requestBody.SetScope(scope)
instanceEnumerationScope := graphmodels.New()
query := "/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f"
instanceEnumerationScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
instanceEnumerationScope.SetQueryType(&queryType) 
	requestBody.SetInstanceEnumerationScope(instanceEnumerationScope)
	reviewers := []graphmodels.able {

	}
settings := graphmodels.New()
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
recurrence := graphmodels.New()
pattern := graphmodels.New()
type := "weekly"
pattern.SetType(&type) 
interval := int32(1)
pattern.SetInterval(&interval) 
	recurrence.SetPattern(pattern)
range := graphmodels.New()
type := "noEnd"
range.SetType(&type) 
startDate := "2020-09-15"
range.SetStartDate(&startDate) 
	recurrence.SetRange(range)
	settings.SetRecurrence(recurrence)
	requestBody.SetSettings(settings)
}
requestBody.SetAdditionalData(additionalData)

graphClient.IdentityGovernance().AccessReviews().Definitions().ByDefinitionId("accessReviewScheduleDefinition-id").Put(context.Background(), requestBody, nil)


```