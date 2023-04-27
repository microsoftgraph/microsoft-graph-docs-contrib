---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewContentType()
name := "docSet"
requestBody.SetName(&name) 
description := "custom docset"
requestBody.SetDescription(&description) 
base := graphmodels.NewContentType()
name := "Document Set"
base.SetName(&name) 
id := "0x0120D520"
base.SetId(&id) 
requestBody.SetBase(base)
group := "Document Set Content Types"
requestBody.SetGroup(&group) 

result, err := graphClient.Sites().BySiteId("site-id").ContentTypes().Post(context.Background(), requestBody, nil)


```