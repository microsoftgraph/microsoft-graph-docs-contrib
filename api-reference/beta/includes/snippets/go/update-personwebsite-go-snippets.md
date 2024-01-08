---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPersonWebsite()
description := "Lyn Damer play in the Women's 1st Division (Toppserien) in Norway"
requestBody.SetDescription(&description) 

websites, err := graphClient.Me().Profile().Websites().ByPersonWebsiteId("personWebsite-id").Patch(context.Background(), requestBody, nil)


```