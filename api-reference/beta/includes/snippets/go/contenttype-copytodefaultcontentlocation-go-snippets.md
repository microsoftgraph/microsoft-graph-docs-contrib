---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCopyToDefaultContentLocationPostRequestBody()
sourceFile := graphmodels.NewItemReference()
sharepointIds := graphmodels.NewSharepointIds()
listId := "e2ecf63b-b0fd-48f7-a54a-d8c15479e3b0"
sharepointIds.SetListId(&listId) 
listItemId := "2"
sharepointIds.SetListItemId(&listItemId) 
sourceFile.SetSharepointIds(sharepointIds)
requestBody.SetSourceFile(sourceFile)
destinationFileName := "newname.txt"
requestBody.SetDestinationFileName(&destinationFileName) 

graphClient.SitesById("site-id").ContentTypesById("contentType-id").CopyToDefaultContentLocation().Post(requestBody)


```