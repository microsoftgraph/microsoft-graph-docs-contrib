---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



workspaces, err := graphClient.Places().ByPlaceId("place-id").GraphRoomList().Workspaces().Get(context.Background(), nil)


```