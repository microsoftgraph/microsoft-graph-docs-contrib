---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/beta/directoryObjects/{id}"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.GroupsById("group-id").Members().$ref().Post(requestBody)


```