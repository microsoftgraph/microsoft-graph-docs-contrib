---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewList()
displayName := "Books"
requestBody.SetDisplayName(&displayName)
requestBody.SetColumns( []ColumnDefinition {
	msgraphsdk.NewColumnDefinition(),
name := "Author"
	SetName(&name)
text := msgraphsdk.NewTextColumn()
	SetText(text)
	msgraphsdk.NewColumnDefinition(),
name := "PageCount"
	SetName(&name)
number := msgraphsdk.NewNumberColumn()
	SetNumber(number)
}
list := msgraphsdk.NewListInfo()
requestBody.SetList(list)
template := "genericList"
list.SetTemplate(&template)
siteId := "site-id"
result, err := graphClient.SitesById(&siteId).Lists().Post(requestBody)


```