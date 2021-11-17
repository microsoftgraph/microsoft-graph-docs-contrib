---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAuthenticationContextClassReference()
requestBody.SetAdditionalData(map[string]interface{}{
	"value":  []Object {
	}
}
options := &msgraphsdk.AuthenticationContextClassReferenceRequestBuilderPatchOptions{
	Body: requestBody,
}
authenticationContextClassReferenceId := "authenticationContextClassReference-id"
graphClient.Identity().ConditionalAccess().AuthenticationContextClassReferencesById(&authenticationContextClassReferenceId).Patch(options)


```