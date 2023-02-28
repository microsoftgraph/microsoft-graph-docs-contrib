---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAddPasswordPostRequestBody()
passwordCredential := graphmodels.NewPasswordCredential()
displayName := "Password friendly name"
passwordCredential.SetDisplayName(&displayName) 
requestBody.SetPasswordCredential(passwordCredential)

result, err := graphClient.ApplicationsById("application-id").MicrosoftGraphAddPassword().Post(context.Background(), requestBody, nil)


```