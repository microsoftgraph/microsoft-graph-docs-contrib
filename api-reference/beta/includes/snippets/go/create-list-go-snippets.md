---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

result, err := graphClient.Sites().BySiteId("site-id").Lists().Post(context.Background(), requestBody, nil)


```