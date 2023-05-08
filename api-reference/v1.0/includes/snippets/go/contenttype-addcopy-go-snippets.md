---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Sites/Item/Lists/Item/ContentTypes/AddCopy"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddCopyPostRequestBody()
contentType := "https://graph.microsoft.com/v1.0/sites/{site-id}/contentTypes/0x0101"
requestBody.SetContentType(&contentType) 

result, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").ContentTypes().AddCopy().Post(context.Background(), requestBody, nil)


```