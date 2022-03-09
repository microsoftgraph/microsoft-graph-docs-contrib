---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

userId := "user-id"
emailAuthenticationMethodId := "emailAuthenticationMethod-id"
result, err := graphClient.UsersById(&userId).Authentication().EmailMethodsById(&emailAuthenticationMethodId).Delete(nil)


```