---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessReviewInstance()
scope := msgraphsdk.NewAccessReviewScope()
requestBody.SetScope(scope)
scope.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
	"principalScopes":  []Object {
	}
	"resourceScopes":  []Object {
	}
}
requestBody.SetReviewers( []AccessReviewReviewerScope {
	msgraphsdk.NewAccessReviewReviewerScope(),
	SetAdditionalData(map[string]interface{}{
		"query": "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
		"queryType": "MicrosoftGraph",
	}
}
requestBody.SetFallbackReviewers( []AccessReviewReviewerScope {
	msgraphsdk.NewAccessReviewReviewerScope(),
	SetAdditionalData(map[string]interface{}{
		"query": "/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
		"queryType": "MicrosoftGraph",
	}
	msgraphsdk.NewAccessReviewReviewerScope(),
	SetAdditionalData(map[string]interface{}{
		"query": "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
		"queryType": "MicrosoftGraph",
	}
}
options := &msgraphsdk.AccessReviewInstanceRequestBuilderPatchOptions{
	Body: requestBody,
}
accessReviewScheduleDefinitionId := "accessReviewScheduleDefinition-id"
accessReviewInstanceId := "accessReviewInstance-id"
graphClient.IdentityGovernance().AccessReviews().DefinitionsById(&accessReviewScheduleDefinitionId).InstancesById(&accessReviewInstanceId).Patch(options)


```