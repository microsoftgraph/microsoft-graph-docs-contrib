---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsites "github.com/microsoftgraph/msgraph-sdk-go/sites"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphsites.NewAddCopyPostRequestBody()
contentType := "https://graph.microsoft.com/v1.0/sites/{site-id}/contentTypes/0x0101"
requestBody.SetContentType(&contentType) 

result, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").ContentTypes().AddCopy().Post(context.Background(), requestBody, nil)


```