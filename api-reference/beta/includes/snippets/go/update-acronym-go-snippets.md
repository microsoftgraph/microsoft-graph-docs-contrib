---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//search"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAcronym()
description := "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers."
requestBody.SetDescription(&description) 

result, err := graphClient.Search().Acronyms().ByAcronymId("acronym-id").Patch(context.Background(), requestBody, nil)


```