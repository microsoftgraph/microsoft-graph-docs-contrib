---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssearch "github.com/microsoftgraph/msgraph-beta-sdk-go/models/search"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssearch.NewBookmark()
description := "Book a fancy vacation in Tuscany or browse museums in Florence."
requestBody.SetDescription(&description) 

bookmarks, err := graphClient.Search().Bookmarks().ByBookmarkId("bookmark-id").Patch(context.Background(), requestBody, nil)


```