---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.UsersById("user-id").Authentication().Fido2MethodsById("fido2AuthenticationMethod-id").Delete(context.Background(), nil)


```