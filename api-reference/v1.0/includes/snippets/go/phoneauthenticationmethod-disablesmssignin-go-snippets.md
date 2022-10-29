---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Me().Authentication().PhoneMethodsById("phoneAuthenticationMethod-id").DisableSmsSignIn().Post(context.Background(), nil)


```