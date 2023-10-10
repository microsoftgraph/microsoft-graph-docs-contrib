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



includePersonalNotebooks := false
getRecentNotebooks, err := graphClient.Me().Onenote().Notebooks().GetRecentNotebooksWithIncludePersonalNotebooks(&includePersonalNotebooks).Get(context.Background(), nil)


```