---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Sites/Item/ContentTypes/Item/CopyToDefaultContentLocation"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

graphClient.Sites().BySiteId("site-id").ContentTypes().ByContentTypeId("contentType-id").CopyToDefaultContentLocation().Post(context.Background(), requestBody, nil)


```