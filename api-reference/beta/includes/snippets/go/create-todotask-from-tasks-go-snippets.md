---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
tasks, err := graphClient.Me().Todo().Lists().ByTodoTaskListId("todoTaskList-id").Tasks().Post(context.Background(), requestBody, nil)


```