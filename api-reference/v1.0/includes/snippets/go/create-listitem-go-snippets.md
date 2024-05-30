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

requestBody := graphmodels.NewListItem()
fields := graphmodels.NewFieldValueSet()
additionalData := map[string]interface{}{
	"title" : "Widget", 
	"color" : "Purple", 
	"weight" : int32(32) , 
}
fields.SetAdditionalData(additionalData)
requestBody.SetFields(fields)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
items, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().Post(context.Background(), requestBody, nil)


```