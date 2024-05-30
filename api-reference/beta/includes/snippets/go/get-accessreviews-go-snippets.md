---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphaccessreviews "github.com/microsoftgraph/msgraph-beta-sdk-go/accessreviews"
	  //other-imports
)


requestFilter := "businessFlowTemplateId eq '6e4f3d20-c5c3-407f-9695-8460952bcc68'"
requestTop := int32(100)
requestSkip := int32(0)

requestParameters := &graphaccessreviews.AccessReviewsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphaccessreviews.AccessReviewsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessReviews, err := graphClient.AccessReviews().Get(context.Background(), configuration)


```