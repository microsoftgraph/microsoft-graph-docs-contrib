---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Sites/Item/Lists/Item/ContentTypes/AddCopyFromContentTypeHub"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddCopyFromContentTypeHubPostRequestBody()
contentTypeId := "0x0101"
requestBody.SetContentTypeId(&contentTypeId) 

result, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").ContentTypes().AddCopyFromContentTypeHub().Post(context.Background(), requestBody, nil)


```