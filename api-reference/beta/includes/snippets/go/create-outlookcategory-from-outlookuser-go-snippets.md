---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewOutlookCategory()
displayName := "Project expenses"
requestBody.SetDisplayName(&displayName)
color := "preset9"
requestBody.SetColor(&color)
options := &msgraphsdk.MasterCategoriesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Outlook().MasterCategories().Post(options)


```