---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

requestBody := graphusers.NewItemCopyToNotebookPostRequestBody()
id := "id-value"
requestBody.SetId(&id) 
groupId := "groupId-value"
requestBody.SetGroupId(&groupId) 
renameAs := "renameAs-value"
requestBody.SetRenameAs(&renameAs) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
copyToNotebook, err := graphClient.Me().Onenote().Sections().ByOnenoteSectionId("onenoteSection-id").CopyToNotebook().Post(context.Background(), requestBody, nil)


```