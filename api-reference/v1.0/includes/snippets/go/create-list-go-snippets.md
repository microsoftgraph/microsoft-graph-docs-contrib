---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewList()
displayName := "Books"
requestBody.SetDisplayName(&displayName)
requestBody.SetColumns( []ColumnDefinition {
	msgraphsdk.NewColumnDefinition(),
	SetAdditionalData(map[string]interface{}{
		"name": "Author",
	}
	msgraphsdk.NewColumnDefinition(),
	SetAdditionalData(map[string]interface{}{
		"name": "PageCount",
	}
}
list := msgraphsdk.NewListInfo()
requestBody.SetList(list)
template := "genericList"
list.SetTemplate(&template)
options := &msgraphsdk.ListsRequestBuilderPostOptions{
	Body: requestBody,
}
siteId := "site-id"
result, err := graphClient.SitesById(&siteId).Lists().Post(options)


```