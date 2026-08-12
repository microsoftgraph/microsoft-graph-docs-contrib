---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAccessReviewScheduleDefinition()
displayName := "Catalog access review"
requestBody.SetDisplayName(&displayName) 
descriptionForAdmins := "Quarterly user-centric review of catalog resources"
requestBody.SetDescriptionForAdmins(&descriptionForAdmins) 
scope := graphmodels.NewPrincipalResourceMembershipsScope()


accessReviewScope := graphmodels.NewAccessReviewPrincipalScope()
scopeType := graphmodels.ALLUSERS_ACCESSREVIEWPRINCIPALSCOPETYPE 
accessReviewScope.SetScopeType(&scopeType) 

principalScopes := []graphmodels.AccessReviewScopeable {
	accessReviewScope,
}
scope.SetPrincipalScopes(principalScopes)


accessReviewScope := graphmodels.NewAccessReviewResourceScope()
resourceId := "c6010d0c-ff41-4929-9776-fa03a03dd5ac"
accessReviewScope.SetResourceId(&resourceId) 
scopeType := graphmodels.CATALOG_ACCESSREVIEWRESOURCESCOPETYPE 
accessReviewScope.SetScopeType(&scopeType) 

resourceScopes := []graphmodels.AccessReviewScopeable {
	accessReviewScope,
}
scope.SetResourceScopes(resourceScopes)
requestBody.SetScope(scope)


accessReviewReviewerScope := graphmodels.NewAccessReviewReviewerScope()
scopeType := graphmodels.MANAGER_ACCESSREVIEWREVIEWERSCOPETYPE 
accessReviewReviewerScope.SetScopeType(&scopeType) 

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
instanceDurationInDays := int32(6)
settings.SetInstanceDurationInDays(&instanceDurationInDays) 
recommendationsEnabled := true
settings.SetRecommendationsEnabled(&recommendationsEnabled) 
recurrence := graphmodels.NewPatternedRecurrence()
pattern := graphmodels.NewRecurrencePattern()
type := graphmodels.ABSOLUTEMONTHLY_RECURRENCEPATTERNTYPE 
pattern.SetType(&type) 
interval := int32(1)
pattern.SetInterval(&interval) 
recurrence.SetPattern(pattern)
range := graphmodels.NewRecurrenceRange()
type := graphmodels.NOEND_RECURRENCERANGETYPE 
range.SetType(&type) 
startDate := 2026-08-31
range.SetStartDate(&startDate) 
recurrence.SetRange(range)
settings.SetRecurrence(recurrence)
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
definitions, err := graphClient.IdentityGovernance().AccessReviews().Unified().Definitions().Post(context.Background(), requestBody, nil)


```