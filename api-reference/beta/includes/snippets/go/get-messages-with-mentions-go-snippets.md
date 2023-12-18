---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "MentionsPreview/IsMentioned eq true"

requestParameters := &graphusers.ItemMessagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"Subject","Sender","ReceivedDateTime","MentionsPreview"},
}
configuration := &graphusers.ItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

messages, err := graphClient.Me().Messages().Get(context.Background(), configuration)


```