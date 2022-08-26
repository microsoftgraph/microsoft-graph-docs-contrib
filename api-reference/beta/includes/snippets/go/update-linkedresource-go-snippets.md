---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewLinkedResource()
webUrl := "http://microsoft.com"
requestBody.SetWebUrl(&webUrl) 
applicationName := "Microsoft"
requestBody.SetApplicationName(&applicationName) 
displayName := "Microsoft"
requestBody.SetDisplayName(&displayName) 

graphClient.Me().Todo().ListsById("todoTaskList-id").TasksById("todoTask-id").LinkedResourcesById("linkedResource-id").Patch(requestBody)


```