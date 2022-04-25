---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

userId := "user-id"
fido2AuthenticationMethodId := "fido2AuthenticationMethod-id"
graphClient.UsersById(&userId).Authentication().Fido2MethodsById(&fido2AuthenticationMethodId).Delete(nil)


```