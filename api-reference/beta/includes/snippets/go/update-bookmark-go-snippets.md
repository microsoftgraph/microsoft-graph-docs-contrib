---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//search"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBookmark()
description := "Book a fancy vacation in Tuscany or browse museums in Florence."
requestBody.SetDescription(&description) 

result, err := graphClient.Search().Bookmarks().ByBookmarkId("bookmark-id").Patch(context.Background(), requestBody, nil)


```