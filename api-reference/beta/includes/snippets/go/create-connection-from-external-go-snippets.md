---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewExternalConnection()
id := "contosohr"
requestBody.SetId(&id) 
name := "Contoso HR"
requestBody.SetName(&name) 
description := "Connection to index Contoso HR system"
requestBody.SetDescription(&description) 

result, err := graphClient.External().Connections().Post(requestBody)


```