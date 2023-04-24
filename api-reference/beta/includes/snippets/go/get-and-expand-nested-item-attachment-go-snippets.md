---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.ItemMessageItemAttachmentItemRequestBuilderGetQueryParameters{
	Expand: [] string {"microsoft.graph.itemattachment/item"},
}
configuration := &graphconfig.ItemMessageItemAttachmentItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Messages().ByMessageId("message-id").Attachments().ByAttachmentId("attachment-id").Get(context.Background(), configuration)


```