---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewExternalConnection()
name := "Contoso HR Service Tickets"
requestBody.SetName(&name)
description := "Connection to index HR service tickets"
requestBody.SetDescription(&description)
externalConnectionId := "externalConnection-id"
graphClient.External().ConnectionsById(&externalConnectionId).Patch(requestBody)


```