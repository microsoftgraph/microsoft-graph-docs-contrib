---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewServicePrincipalIdsRequestBody()
requestBody.SetServicePrincipalIds( []String {
	"9089a539-a539-9089-39a5-899039a58990",
}
graphClient.IdentityProtection().RiskyServicePrincipals().Dismiss().Post(requestBody)


```