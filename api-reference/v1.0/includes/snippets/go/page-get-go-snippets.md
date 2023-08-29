---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



pages, err := graphClient.Me().Onenote().Pages().ByOnenotePageId("onenotePage-id").Get(context.Background(), nil)


```