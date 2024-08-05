---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewContentType()
name := "docSet"
requestBody.SetName(&name) 
description := "custom docset"
requestBody.SetDescription(&description) 
base := graphmodels.NewContentType()
name := "Document Set"
base.SetName(&name) 
id := "0x0120D520"
base.SetId(&id) 
requestBody.SetBase(base)
group := "Document Set Content Types"
requestBody.SetGroup(&group) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
contentTypes, err := graphClient.Sites().BySiteId("site-id").ContentTypes().Post(context.Background(), requestBody, nil)


```