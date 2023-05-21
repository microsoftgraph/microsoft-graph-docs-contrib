---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Compliance/Ediscovery/Cases/Item/ReviewSets/Item/Queries/Item/MicrosoftGraphEdiscoveryApplyTags"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewApplyTagsPostRequestBody()


tag := graphmodels.NewTag()
id := "b4798d14-748d-468e-a1ec-96a2b1d49677"
tag.SetId(&id) 

tagsToAdd := []graphmodels.Objectable {
	tag,

}
requestBody.SetTagsToAdd(tagsToAdd)

graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").ReviewSets().ByReviewSetId("reviewSet-id").Queries().ByQuerieId("reviewSetQuery-id").MicrosoftGraphEdiscoveryApplyTags().Post(context.Background(), requestBody, nil)


```