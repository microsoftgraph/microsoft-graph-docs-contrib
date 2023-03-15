---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewEmailAuthenticationMethod()
emailAddress := "kim@contoso.com"
requestBody.SetEmailAddress(&emailAddress) 

result, err := graphClient.UsersById("user-id").Authentication().EmailMethods().Post(context.Background(), requestBody, nil)


```