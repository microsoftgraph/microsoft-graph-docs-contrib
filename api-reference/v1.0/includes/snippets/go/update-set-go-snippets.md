---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelstermstore "github.com/microsoftgraph/msgraph-sdk-go/models/termstore"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelstermstore.NewSet()
description := "mySet"
requestBody.SetDescription(&description) 

result, err := graphClient.Sites().BySiteId("site-id").TermStore().Sets().BySetId("set-id").Patch(context.Background(), requestBody, nil)


```