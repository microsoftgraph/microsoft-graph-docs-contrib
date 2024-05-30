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

requestBody := graphmodels.NewAccessReviewStage()


accessReviewReviewerScope := graphmodels.NewAccessReviewReviewerScope()
query := "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5"
accessReviewReviewerScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewReviewerScope.SetQueryType(&queryType) 

reviewers := []graphmodels.AccessReviewReviewerScopeable {
	accessReviewReviewerScope,
}
requestBody.SetReviewers(reviewers)


accessReviewReviewerScope := graphmodels.NewAccessReviewReviewerScope()
query := "/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e"
accessReviewReviewerScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewReviewerScope.SetQueryType(&queryType) 
accessReviewReviewerScope1 := graphmodels.NewAccessReviewReviewerScope()
query := "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5"
accessReviewReviewerScope1.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewReviewerScope1.SetQueryType(&queryType) 

fallbackReviewers := []graphmodels.AccessReviewReviewerScopeable {
	accessReviewReviewerScope,
	accessReviewReviewerScope1,
}
requestBody.SetFallbackReviewers(fallbackReviewers)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
stages, err := graphClient.IdentityGovernance().AccessReviews().Definitions().ByAccessReviewScheduleDefinitionId("accessReviewScheduleDefinition-id").Instances().ByAccessReviewInstanceId("accessReviewInstance-id").Stages().ByAccessReviewStageId("accessReviewStage-id").Patch(context.Background(), requestBody, nil)


```