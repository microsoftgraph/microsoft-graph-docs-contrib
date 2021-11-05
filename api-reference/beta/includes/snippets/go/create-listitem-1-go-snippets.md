---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewListItem()
fields := msgraphsdk.NewFieldValueSet()
requestBody.SetFields(fields)
fields.SetAdditionalData(map[string]interface{}{
	"Title": "Widget",
	"Color": "Purple",
	"Weight": ,
}
options := &msgraphsdk.ItemsRequestBuilderPostOptions{
	Body: requestBody,
}
siteId := "site-id"
listId := "list-id"
result, err := graphClient.SitesById(&siteId).ListsById(&listId).Items().Post(options);


```