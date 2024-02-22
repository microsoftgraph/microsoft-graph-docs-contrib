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



documentSetVersions, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().ByListItemId("listItem-id").DocumentSetVersions().ByDocumentSetVersionId("documentSetVersion-id").Get(context.Background(), nil)


```