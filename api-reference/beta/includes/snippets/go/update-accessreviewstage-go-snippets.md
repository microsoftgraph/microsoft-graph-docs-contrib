---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessReviewStage()
"@odata.type" := "#microsoft.graph.accessReviewStage"
requestBody.Set"@odata.type"(&"@odata.type") 


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

graphClient.IdentityGovernance().AccessReviews().DefinitionsById("accessReviewScheduleDefinition-id").InstancesById("accessReviewInstance-id").StagesById("accessReviewStage-id").Patch(requestBody)


```