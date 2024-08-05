---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  //other-imports
)

requestBody := graphmodelsediscovery.NewReviewSetQuery()
displayName := "My Query 1 - Renamed"
requestBody.SetDisplayName(&displayName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
queries, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").ReviewSets().ByReviewSetId("reviewSet-id").Queries().ByReviewSetQueryId("reviewSetQuery-id").Patch(context.Background(), requestBody, nil)


```