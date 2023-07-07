---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-beta-sdk-go/chats"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphchats.ChatsRequestBuilderGetQueryParameters{
	Expand: [] string {"lastMessagePreview"},
}
configuration := &graphchats.ChatsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Chats().Get(context.Background(), configuration)


```