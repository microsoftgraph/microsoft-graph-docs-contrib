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



terms, err := graphClient.Sites().BySiteId("site-id").TermStore().Groups().ByGroupId("group-id").Sets().BySetId("set-id").Terms().ByTermId("term-id").Get(context.Background(), nil)


```