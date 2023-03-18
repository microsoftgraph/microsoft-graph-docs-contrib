---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewValidatePasswordPostRequestBody()
password := "1234567890"
requestBody.SetPassword(&password) 

result, err := graphClient.Users().ValidatePassword().Post(context.Background(), requestBody, nil)


```