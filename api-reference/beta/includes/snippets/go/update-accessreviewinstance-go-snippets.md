---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessReviewInstance()
scope := graphmodels.NewAccessReviewScope()
"@odata.type" := "#microsoft.graph.principalResourceMembershipsScope"
scope.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{


 := graphmodels.New()
"@odata.type" := "#microsoft.graph.accessReviewQueryScope"
.Set"@odata.type"(&"@odata.type") 
query := "/v1.0/users"
.SetQuery(&query) 
queryType := "MicrosoftGraph"
.SetQueryType(&queryType) 
 := graphmodels.New()
"@odata.type" := "#microsoft.graph.accessReviewQueryScope"
.Set"@odata.type"(&"@odata.type") 
query := "/v1.0/groups"
.SetQuery(&query) 
queryType := "MicrosoftGraph"
.SetQueryType(&queryType) 

	principalScopes := []graphmodels.Objectable {
		,
		,

	}


 := graphmodels.New()
"@odata.type" := "#microsoft.graph.accessReviewQueryScope"
.Set"@odata.type"(&"@odata.type") 
query := "/beta/roleManagement/directory/roleDefinitions/9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3"
.SetQuery(&query) 
queryType := "MicrosoftGraph"
.SetQueryType(&queryType) 

	resourceScopes := []graphmodels.Objectable {
		,

	}
}
scope.SetAdditionalData(additionalData)
requestBody.SetScope(scope)


 := graphmodels.New()
additionalData := map[string]interface{}{
	"query" : "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5", 
	"queryType" : "MicrosoftGraph", 
}
.SetAdditionalData(additionalData)

reviewers := []graphmodels.Objectable {
	,

}
requestBody.SetReviewers(reviewers)


 := graphmodels.New()
additionalData := map[string]interface{}{
	"query" : "/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e", 
	"queryType" : "MicrosoftGraph", 
}
.SetAdditionalData(additionalData)
 := graphmodels.New()
additionalData := map[string]interface{}{
	"query" : "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5", 
	"queryType" : "MicrosoftGraph", 
}
.SetAdditionalData(additionalData)

fallbackReviewers := []graphmodels.Objectable {
	,
	,

}
requestBody.SetFallbackReviewers(fallbackReviewers)

graphClient.IdentityGovernance().AccessReviews().DefinitionsById("accessReviewScheduleDefinition-id").InstancesById("accessReviewInstance-id").Patch(requestBody)


```