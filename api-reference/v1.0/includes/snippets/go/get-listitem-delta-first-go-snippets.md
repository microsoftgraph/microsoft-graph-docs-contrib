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



items, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().ByListItemId("listItem-id").Get(context.Background(), nil)


```