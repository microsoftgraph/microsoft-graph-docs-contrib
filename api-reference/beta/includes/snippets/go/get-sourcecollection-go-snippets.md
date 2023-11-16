---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcompliance "github.com/microsoftgraph/msgraph-beta-sdk-go/compliance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphcompliance.ComplianceEdiscoveryCaseItemSourceCollectionItemRequestBuilderGetQueryParameters{
	Expand: [] string {"addToReviewSetOperation","custodianSources","lastEstimateStatisticsOperation"},
}
configuration := &graphcompliance.ComplianceEdiscoveryCaseItemSourceCollectionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

sourceCollections, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").SourceCollections().BySourceCollectionId("sourceCollection-id").Get(context.Background(), configuration)


```