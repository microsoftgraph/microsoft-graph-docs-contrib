---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAuthorizationPolicy()
requestBody.SetAdditionalData(map[string]interface{}{
	"guestUserRole": "2af84b1e-32c8-42b7-82bc-daa82404023b",
}
options := &msgraphsdk.AuthorizationPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
authorizationPolicyId := "authorizationPolicy-id"
graphClient.Policies().AuthorizationPolicyById(&authorizationPolicyId).Patch(options)


```