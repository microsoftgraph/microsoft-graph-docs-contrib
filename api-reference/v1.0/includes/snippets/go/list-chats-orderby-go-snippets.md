---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-sdk-go/chats"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphchats.ChatsRequestBuilderGetQueryParameters{
	Orderby: [] string {"lastMessagePreview/createdDateTime desc"},
}
configuration := &graphchats.ChatsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

chats, err := graphClient.Chats().Get(context.Background(), configuration)


```