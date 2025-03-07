---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)

requestBody := graphdirectory.NewPostponePostRequestBody()
postponeUntilDateTime , err := time.Parse(time.RFC3339, "2023-02-01T02:53:00Z")
requestBody.SetPostponeUntilDateTime(&postponeUntilDateTime) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
postpone, err := graphClient.Directory().Recommendations().ByRecommendationId("recommendation-id").Postpone().Post(context.Background(), requestBody, nil)


```