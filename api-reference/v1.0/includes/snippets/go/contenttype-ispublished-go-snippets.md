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



isPublished(), err := graphClient.Sites().BySiteId("site-id").ContentTypes().ByContentTypeId("contentType-id").IsPublished().Get(context.Background(), nil)


```