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
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  //other-imports
)

requestBody := graphcompliance.NewApplyTagsPostRequestBody()


tag := graphmodelsediscovery.NewTag()
id := "b4798d14-748d-468e-a1ec-96a2b1d49677"
tag.SetId(&id) 

tagsToAdd := []graphmodelsediscovery.Tagable {
	tag,
}
requestBody.SetTagsToAdd(tagsToAdd)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").ReviewSets().ByReviewSetId("reviewSet-id").Queries().ByReviewSetQueryId("reviewSetQuery-id").MicrosoftGraphEdiscoveryApplyTags().Post(context.Background(), requestBody, nil)


```