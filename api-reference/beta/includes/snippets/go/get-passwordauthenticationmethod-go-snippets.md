---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

passwordAuthenticationMethodId := "passwordAuthenticationMethod-id"
result, err := graphClient.Me().Authentication().PasswordMethodsById(&passwordAuthenticationMethodId).Get(nil)


```