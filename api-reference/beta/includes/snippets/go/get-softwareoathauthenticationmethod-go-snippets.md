---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

softwareOathAuthenticationMethodId := "softwareOathAuthenticationMethod-id"
result, err := graphClient.Me().Authentication().SoftwareOathMethodsById(&softwareOathAuthenticationMethodId).Get(options)


```