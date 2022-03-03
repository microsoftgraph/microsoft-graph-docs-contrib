---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetServicePrincipalIds( []String {
	"9089a539-a539-9089-39a5-899039a58990",
}
options := &msgraphsdk.DismissRequestBuilderPostOptions{
	Body: requestBody,
}
graphClient.IdentityProtection().RiskyServicePrincipals().Dismiss().Post(options)


```