---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)


requestFilter := "recommendationType eq 'turnOffPerUserMFA'"

requestParameters := &graphdirectory.DirectoryRecommendationsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphdirectory.DirectoryRecommendationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
recommendations, err := graphClient.Directory().Recommendations().Get(context.Background(), configuration)


```