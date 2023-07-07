---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcompliance "github.com/microsoftgraph/msgraph-beta-sdk-go/compliance"
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphcompliance.NewApplyTagsPostRequestBody()


tag := graphmodelsediscovery.NewTag()
id := "b4798d14-748d-468e-a1ec-96a2b1d49677"
tag.SetId(&id) 

tagsToAdd := []graphmodelsediscovery.tagable {
	tag,
}
requestBody.SetTagsToAdd(tagsToAdd)

graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").ReviewSets().ByReviewSetId("reviewSet-id").Queries().ByQuerieId("reviewSetQuery-id").MicrosoftGraphEdiscoveryApplyTags().Post(context.Background(), requestBody, nil)


```