---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetUserIds( []String {
	"29f270bb-4d23-4f68-8a57-dc73dc0d4caf",
	"20f91ec9-d140-4d90-9cd9-f618587a1471",
}
options := &msgraphsdk.ConfirmCompromisedRequestBuilderPostOptions{
	Body: requestBody,
}
graphClient.IdentityProtection().RiskyUsers().ConfirmCompromised().Post(options)


```