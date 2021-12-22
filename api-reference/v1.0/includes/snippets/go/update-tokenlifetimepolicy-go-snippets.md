---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewTokenLifetimePolicy()
requestBody.SetDefinition( []String {
	"definition-value",
}
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName)
isOrganizationDefault := true
requestBody.SetIsOrganizationDefault(&isOrganizationDefault)
options := &msgraphsdk.TokenLifetimePolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
tokenLifetimePolicyId := "tokenLifetimePolicy-id"
graphClient.Policies().TokenLifetimePoliciesById(&tokenLifetimePolicyId).Patch(options)


```