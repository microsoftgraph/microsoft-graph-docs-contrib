---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Security/Cases/EdiscoveryCases/Item/ReviewSets/Item/Queries/Item/SecurityApplyTags"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewApplyTagsPostRequestBody()


ediscoveryReviewTag := graphmodels.NewEdiscoveryReviewTag()
id := "d3d99dc704a74801b792b3e1e722aa0d"
ediscoveryReviewTag.SetId(&id) 

tagsToAdd := []graphmodels.Objectable {
	ediscoveryReviewTag,

}
requestBody.SetTagsToAdd(tagsToAdd)

graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").ReviewSets().ByReviewSetId("ediscoveryReviewSet-id").Queries().ByQuerieId("ediscoveryReviewSetQuery-id").SecurityApplyTags().Post(context.Background(), requestBody, nil)


```