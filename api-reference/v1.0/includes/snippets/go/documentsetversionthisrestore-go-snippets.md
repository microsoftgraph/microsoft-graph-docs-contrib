---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().ByItemId("listItem-id").DocumentSetVersions().ByDocumentSetVersionId("documentSetVersion-id").Restore().Post(context.Background(), nil)


```