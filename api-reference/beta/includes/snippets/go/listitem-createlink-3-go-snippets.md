---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsites "github.com/microsoftgraph/msgraph-beta-sdk-go/sites"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphsites.NewCreateLinkPostRequestBody()
type := "embed"
requestBody.SetType(&type) 

result, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().ByItemId("listItem-id").CreateLink().Post(context.Background(), requestBody, nil)


```