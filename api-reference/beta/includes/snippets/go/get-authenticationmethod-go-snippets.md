---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

authenticationMethodId := "authenticationMethod-id"
result, err := graphClient.Me().Authentication().MethodsById(&authenticationMethodId).Get(options);


```