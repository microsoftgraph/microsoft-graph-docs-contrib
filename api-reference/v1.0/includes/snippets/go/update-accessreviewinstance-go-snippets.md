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


requestBody := graphmodels.NewAccessReviewInstance()
scope := graphmodels.NewPrincipalResourceMembershipsScope()


accessReviewScope := graphmodels.NewAccessReviewQueryScope()
query := "/v1.0/users"
accessReviewScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewScope.SetQueryType(&queryType) 
accessReviewScope1 := graphmodels.NewAccessReviewQueryScope()
query := "/v1.0/groups"
accessReviewScope1.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewScope1.SetQueryType(&queryType) 

principalScopes := []graphmodels.AccessReviewScopeable {
	accessReviewScope,
	accessReviewScope1,
}
scope.SetPrincipalScopes(principalScopes)


accessReviewScope := graphmodels.NewAccessReviewQueryScope()
query := "/beta/roleManagement/directory/roleDefinitions/9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3"
accessReviewScope.SetQuery(&query) 
queryType := "MicrosoftGraph"
accessReviewScope.SetQueryType(&queryType) 

resourceScopes := []graphmodels.AccessReviewScopeable {
	accessReviewScope,
}
scope.SetResourceScopes(resourceScopes)
requestBody.SetScope(scope)


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

result, err := graphClient.IdentityGovernance().AccessReviews().Definitions().ByDefinitionId("accessReviewScheduleDefinition-id").Instances().ByInstanceId("accessReviewInstance-id").Patch(context.Background(), requestBody, nil)


```