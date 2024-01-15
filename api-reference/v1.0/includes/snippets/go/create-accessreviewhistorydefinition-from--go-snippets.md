---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessReviewHistoryDefinition()
displayName := "Last quarter's group reviews April 2021"
requestBody.SetDisplayName(&displayName) 
decisions := []graphmodels.AccessReviewHistoryDecisionFilterable {
	accessReviewHistoryDecisionFilter := graphmodels.APPROVE_ACCESSREVIEWHISTORYDECISIONFILTER 
	requestBody.SetAccessReviewHistoryDecisionFilter(&accessReviewHistoryDecisionFilter) 
	accessReviewHistoryDecisionFilter := graphmodels.DENY_ACCESSREVIEWHISTORYDECISIONFILTER 
	requestBody.SetAccessReviewHistoryDecisionFilter(&accessReviewHistoryDecisionFilter) 
	accessReviewHistoryDecisionFilter := graphmodels.DONTKNOW_ACCESSREVIEWHISTORYDECISIONFILTER 
	requestBody.SetAccessReviewHistoryDecisionFilter(&accessReviewHistoryDecisionFilter) 
	accessReviewHistoryDecisionFilter := graphmodels.NOTREVIEWED_ACCESSREVIEWHISTORYDECISIONFILTER 
	requestBody.SetAccessReviewHistoryDecisionFilter(&accessReviewHistoryDecisionFilter) 
	accessReviewHistoryDecisionFilter := graphmodels.NOTNOTIFIED_ACCESSREVIEWHISTORYDECISIONFILTER 
	requestBody.SetAccessReviewHistoryDecisionFilter(&accessReviewHistoryDecisionFilter)
}
requestBody.SetDecisions(decisions)
reviewHistoryPeriodStartDateTime , err := time.Parse(time.RFC3339, "2021-01-01T00:00:00Z")
requestBody.SetReviewHistoryPeriodStartDateTime(&reviewHistoryPeriodStartDateTime) 
reviewHistoryPeriodEndDateTime , err := time.Parse(time.RFC3339, "2021-04-30T23:59:59Z")
requestBody.SetReviewHistoryPeriodEndDateTime(&reviewHistoryPeriodEndDateTime) 


accessReviewScope := graphmodels.NewAccessReviewQueryScope()
queryType := "MicrosoftGraph"
accessReviewScope.SetQueryType(&queryType) 
query := "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')"
accessReviewScope.SetQuery(&query) 
queryRoot := null
accessReviewScope.SetQueryRoot(&queryRoot) 
accessReviewScope1 := graphmodels.NewAccessReviewQueryScope()
queryType := "MicrosoftGraph"
accessReviewScope1.SetQueryType(&queryType) 
query := "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')"
accessReviewScope1.SetQuery(&query) 
queryRoot := null
accessReviewScope1.SetQueryRoot(&queryRoot) 

scopes := []graphmodels.AccessReviewScopeable {
	accessReviewScope,
	accessReviewScope1,
}
requestBody.SetScopes(scopes)

historyDefinitions, err := graphClient.IdentityGovernance().AccessReviews().HistoryDefinitions().Post(context.Background(), requestBody, nil)


```