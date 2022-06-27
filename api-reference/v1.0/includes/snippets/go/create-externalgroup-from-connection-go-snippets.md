---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewExternalGroup()
id := "31bea3d537902000"
requestBody.SetId(&id)
displayName := "Contoso Marketing"
requestBody.SetDisplayName(&displayName)
description := "The product marketing team"
requestBody.SetDescription(&description)
externalConnectionId := "externalConnection-id"
result, err := graphClient.External().ConnectionsById(&externalConnectionId).Groups().Post(requestBody)


```