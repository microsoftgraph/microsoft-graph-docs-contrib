---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/accessreviews"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "businessFlowTemplateId eq '6e4f3d20-c5c3-407f-9695-8460952bcc68'"
requestTop := int32(100)
requestSkip := int32(0)

requestParameters := &graphconfig.AccessReviewsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphconfig.AccessReviewsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.AccessReviews().Get(context.Background(), configuration)


```