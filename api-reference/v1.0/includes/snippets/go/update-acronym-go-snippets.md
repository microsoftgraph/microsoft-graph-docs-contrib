---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelssearch "github.com/microsoftgraph/msgraph-sdk-go/models/search"
	  //other-imports
)

requestBody := graphmodelssearch.NewAcronym()
description := "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers."
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
acronyms, err := graphClient.Search().Acronyms().ByAcronymId("acronym-id").Patch(context.Background(), requestBody, nil)


```