---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/compliance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.ComplianceEdiscoveryCaseItemSourceCollectionItemRequestBuilderGetQueryParameters{
	Expand: [] string {"addToReviewSetOperation","custodianSources","lastEstimateStatisticsOperation"},
}
configuration := &graphconfig.ComplianceEdiscoveryCaseItemSourceCollectionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").SourceCollectionsById("sourceCollection-id").Get(context.Background(), configuration)


```