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

requestBody := graphmodels.NewDocumentSetVersion()
comment := "v1"
requestBody.SetComment(&comment) 
shouldCaptureMinorVersion := false
requestBody.SetShouldCaptureMinorVersion(&shouldCaptureMinorVersion) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
documentSetVersions, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().ByListItemId("listItem-id").DocumentSetVersions().Post(context.Background(), requestBody, nil)


```