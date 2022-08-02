---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTodoTask()
title := "A new task"
requestBody.SetTitle(&title) 
categories := []string {
	"Important",

}
requestBody.SetCategories(categories)


linkedResource := graphmodels.NewLinkedResource()
webUrl := "http://microsoft.com"
linkedResource.SetWebUrl(&webUrl) 
applicationName := "Microsoft"
linkedResource.SetApplicationName(&applicationName) 
displayName := "Microsoft"
linkedResource.SetDisplayName(&displayName) 

linkedResources := []graphmodels.LinkedResourceable {
	linkedResource,

}
requestBody.SetLinkedResources(linkedResources)

result, err := graphClient.Me().Todo().ListsById("todoTaskList-id").Tasks().Post(requestBody)


```