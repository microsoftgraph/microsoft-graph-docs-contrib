---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Security/Cases/EdiscoveryCases/Item/ReviewSets/Item/SecurityAddToReviewSet"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddToReviewSetPostRequestBody()
search := graphmodels.NewEdiscoverySearch()
id := "c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7"
search.SetId(&id) 
requestBody.SetSearch(search)
additionalDataOptions := graphmodels.LINKEDFILES_ADDITIONALDATAOPTIONS 
requestBody.SetAdditionalDataOptions(&additionalDataOptions) 

graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").ReviewSets().ByReviewSetId("ediscoveryReviewSet-id").SecurityAddToReviewSet().Post(context.Background(), requestBody, nil)


```