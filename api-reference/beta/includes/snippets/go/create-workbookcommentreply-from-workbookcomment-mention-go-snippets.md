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

requestBody := graphmodels.NewWorkbookCommentReply()
richContent := "<at id=\"0\">Kate Kristensen</at> - Can you take a look?"
requestBody.SetRichContent(&richContent) 


workbookCommentMention := graphmodels.NewWorkbookCommentMention()
id := int32(0)
workbookCommentMention.SetId(&id) 
name := "Kate Kristensen"
workbookCommentMention.SetName(&name) 
email := "kakri@contoso.com"
workbookCommentMention.SetEmail(&email) 

mentions := []graphmodels.WorkbookCommentMentionable {
	workbookCommentMention,
}
requestBody.SetMentions(mentions)
contentType := "mention"
requestBody.SetContentType(&contentType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
replies, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Comments().ByWorkbookCommentId("workbookComment-id").Replies().Post(context.Background(), requestBody, nil)


```