---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

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

result, err := graphClient.SitesById("site-id").Lists().Post(context.Background(), requestBody, nil)


```