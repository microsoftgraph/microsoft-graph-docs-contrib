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



operations, err := graphClient.Sites().BySiteId("site-id").Operations().ByRichLongRunningOperationId("richLongRunningOperation-id").Get(context.Background(), nil)


```