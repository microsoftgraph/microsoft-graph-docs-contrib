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


requestBody := graphmodelstermstore.NewGroup()
displayName := "myGroup"
requestBody.SetDisplayName(&displayName) 

groups, err := graphClient.Sites().BySiteId("site-id").TermStore().Groups().Post(context.Background(), requestBody, nil)


```