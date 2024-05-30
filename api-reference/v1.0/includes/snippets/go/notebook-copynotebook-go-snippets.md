---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

requestBody := graphusers.NewItemCopyNotebookPostRequestBody()
groupId := "groupId-value"
requestBody.SetGroupId(&groupId) 
renameAs := "renameAs-value"
requestBody.SetRenameAs(&renameAs) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
copyNotebook, err := graphClient.Me().Onenote().Notebooks().ByNotebookId("notebook-id").CopyNotebook().Post(context.Background(), requestBody, nil)


```