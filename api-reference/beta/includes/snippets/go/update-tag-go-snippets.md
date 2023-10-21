---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsediscovery.NewTag()
description := "This is an updated description."
requestBody.SetDescription(&description) 

tags, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Tags().ByTagId("tag-id").Patch(context.Background(), requestBody, nil)


```