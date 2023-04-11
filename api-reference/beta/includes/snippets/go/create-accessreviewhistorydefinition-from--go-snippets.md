---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
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

result, err := graphClient.IdentityGovernance().AccessReviews().HistoryDefinitions().Post(context.Background(), requestBody, nil)


```