---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestTop := int32(5)

requestParameters := &graphconfig.SecurityCasesEdiscoveryCaseItemReviewSetItemFilesRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.SecurityCasesEdiscoveryCaseItemReviewSetItemFilesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").ReviewSets().ByReviewSetId("ediscoveryReviewSet-id").Files().Get(context.Background(), configuration)


```