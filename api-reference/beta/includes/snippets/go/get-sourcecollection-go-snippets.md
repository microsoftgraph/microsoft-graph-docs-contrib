---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcompliance "github.com/microsoftgraph/msgraph-beta-sdk-go/compliance"
	  //other-imports
)

requestParameters := &graphcompliance.EdiscoveryCasesItemSourceCollectionsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"addToReviewSetOperation","custodianSources","lastEstimateStatisticsOperation"},
}
configuration := &graphcompliance.EdiscoveryCasesItemSourceCollectionsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sourceCollections, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").SourceCollections().BySourceCollectionId("sourceCollection-id").Get(context.Background(), configuration)


```