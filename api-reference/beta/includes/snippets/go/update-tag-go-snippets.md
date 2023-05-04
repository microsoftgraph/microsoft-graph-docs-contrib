---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//ediscovery"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTag()
description := "This is an updated description."
requestBody.SetDescription(&description) 

result, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Tags().ByTagId("tag-id").Patch(context.Background(), requestBody, nil)


```