---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

identityProviderBaseId := "identityProviderBase-id"
graphClient.Directory().FederationConfigurationsById(&identityProviderBaseId).Delete(options)


```