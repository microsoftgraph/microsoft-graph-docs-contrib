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



sections, err := graphClient.Me().Onenote().Sections().ByOnenoteSectionId("onenoteSection-id").Get(context.Background(), nil)


```