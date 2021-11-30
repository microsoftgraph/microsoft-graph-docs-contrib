---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

userId := "user-id"
temporaryAccessPassAuthenticationMethodId := "temporaryAccessPassAuthenticationMethod-id"
result, err := graphClient.UsersById(&userId).Authentication().TemporaryAccessPassMethodsById(&temporaryAccessPassAuthenticationMethodId).Get(options)


```