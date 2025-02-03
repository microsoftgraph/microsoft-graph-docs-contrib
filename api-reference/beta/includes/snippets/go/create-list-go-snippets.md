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

requestBody := graphmodels.NewList()
displayName := "Books"
requestBody.SetDisplayName(&displayName) 


columnDefinition := graphmodels.NewColumnDefinition()
name := "Author"
columnDefinition.SetName(&name) 
text := graphmodels.NewTextColumn()
columnDefinition.SetText(text)
columnDefinition1 := graphmodels.NewColumnDefinition()
name := "PageCount"
columnDefinition1.SetName(&name) 
number := graphmodels.NewNumberColumn()
columnDefinition1.SetNumber(number)

columns := []graphmodels.ColumnDefinitionable {
	columnDefinition,
	columnDefinition1,
}
requestBody.SetColumns(columns)
list := graphmodels.NewListInfo()
template := "genericList"
list.SetTemplate(&template) 
requestBody.SetList(list)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
lists, err := graphClient.Sites().BySiteId("site-id").Lists().Post(context.Background(), requestBody, nil)


```