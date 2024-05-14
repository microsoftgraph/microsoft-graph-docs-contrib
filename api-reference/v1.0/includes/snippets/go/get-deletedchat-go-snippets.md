---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



deletedChats, err := graphClient.Teamwork().DeletedChats().ByDeletedChatId("deletedChat-id").Get(context.Background(), nil)


```