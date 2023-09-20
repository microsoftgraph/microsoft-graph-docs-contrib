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



listId := "{listId}"
getApplicableContentTypesForList, err := graphClient.Sites().BySiteId("site-id").GetApplicableContentTypesForListWithListId(&listId).Get(context.Background(), nil)


```