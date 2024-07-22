---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelstermstore "github.com/microsoftgraph/msgraph-sdk-go/models/termstore"
	  //other-imports
)

requestBody := graphmodelstermstore.NewGroup()
displayName := "myGroup"
requestBody.SetDisplayName(&displayName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
groups, err := graphClient.Sites().BySiteId("site-id").TermStore().Groups().Post(context.Background(), requestBody, nil)


```