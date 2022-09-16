---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEmailAuthenticationMethod()
emailAddress := "kim@contoso.com"
requestBody.SetEmailAddress(&emailAddress) 

graphClient.UsersById("user-id").Authentication().EmailMethodsById("emailAuthenticationMethod-id").Patch(context.Background(), requestBody, nil)


```