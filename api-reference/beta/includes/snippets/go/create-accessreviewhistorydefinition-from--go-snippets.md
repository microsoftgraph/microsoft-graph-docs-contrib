---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
historyDefinitions, err := graphClient.IdentityGovernance().AccessReviews().HistoryDefinitions().Post(context.Background(), requestBody, nil)


```