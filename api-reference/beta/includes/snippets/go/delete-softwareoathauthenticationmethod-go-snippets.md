---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

userId := "user-id"
softwareOathAuthenticationMethodId := "softwareOathAuthenticationMethod-id"
result, err := graphClient.UsersById(&userId).Authentication().SoftwareOathMethodsById(&softwareOathAuthenticationMethodId).Delete(nil)


```