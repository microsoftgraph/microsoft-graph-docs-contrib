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



tags, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Tags().Get(context.Background(), nil)


```