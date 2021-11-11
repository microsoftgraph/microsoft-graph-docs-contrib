---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
sourceFile := msgraphsdk.NewItemReference()
requestBody.SetSourceFile(sourceFile)
sharepointIds := msgraphsdk.NewSharepointIds()
sourceFile.SetSharepointIds(sharepointIds)
listId := "e2ecf63b-b0fd-48f7-a54a-d8c15479e3b0"
sharepointIds.SetListId(&listId)
listItemId := "2"
sharepointIds.SetListItemId(&listItemId)
destinationFileName := "newname.txt"
requestBody.SetDestinationFileName(&destinationFileName)
options := &msgraphsdk.CopyToDefaultContentLocationRequestBuilderPostOptions{
	Body: requestBody,
}
siteId := "site-id"
contentTypeId := "contentType-id"
graphClient.SitesById(&siteId).ContentTypesById(&contentTypeId).CopyToDefaultContentLocation().Post(options)


```