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



relations, err := graphClient.Sites().BySiteId("site-id").TermStore().Sets().BySetId("set-id").Relations().Get(context.Background(), nil)


```