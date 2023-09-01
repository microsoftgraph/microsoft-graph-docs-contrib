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
type := "edit"
requestBody.SetType(&type) 
scope := "organization"
requestBody.SetScope(&scope) 

createLink, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().ByListItemId("listItem-id").CreateLink().Post(context.Background(), requestBody, nil)


```