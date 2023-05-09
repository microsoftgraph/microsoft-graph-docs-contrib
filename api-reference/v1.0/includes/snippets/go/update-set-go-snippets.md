---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models//termStore"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSet()
description := "mySet"
requestBody.SetDescription(&description) 

result, err := graphClient.Sites().BySiteId("site-id").TermStore().Sets().BySetId("set-id").Patch(context.Background(), requestBody, nil)


```